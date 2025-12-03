@interface _EARProfiler
+ (id)sharedProfiler;
- (_EARProfiler)init;
- (id).cxx_construct;
- (id)reportProfilingAsDictionary;
- (void)addProfilingNetwork:(void *)network;
- (void)cleanupLogfiles;
- (void)finishProfiling;
- (void)finishProfilingNetworks;
- (void)parsePowerSummary:(id)summary writeTo:(powerSummary *)to;
- (void)reportProfiling;
- (void)reset;
- (void)sample;
- (void)setPerfProfiler:(BOOL)profiler;
- (void)setPowerProfiler:(BOOL)profiler powerProfilerName:(id)name;
@end

@implementation _EARProfiler

- (_EARProfiler)init
{
  v5.receiver = self;
  v5.super_class = _EARProfiler;
  v2 = [(_EARProfiler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_EARProfiler *)v2 reset];
  }

  return v3;
}

+ (id)sharedProfiler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30___EARProfiler_sharedProfiler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[_EARProfiler sharedProfiler]::onceToken != -1)
  {
    dispatch_once(&+[_EARProfiler sharedProfiler]::onceToken, block);
  }

  v2 = +[_EARProfiler sharedProfiler]::sharedProfiler;

  return v2;
}

- (void)reset
{
  [(_EARProfiler *)self set_memoryProfiler:0];
  [(_EARProfiler *)self set_perfProfiler:0];
  [(_EARProfiler *)self set_powerProfiler:0];
  [(_EARProfiler *)self set_hasPMP:1];
  [(_EARProfiler *)self set_keepLogFiles:0];
  *&self->_jetsam_max = 0u;
  *&self->_n_samples = 0u;
  std::vector<float>::vector[abi:ne200100](&v10, 4uLL);
  begin = self->_background_power.__begin_;
  if (begin)
  {
    self->_background_power.__end_ = begin;
    operator delete(begin);
  }

  *&self->_background_power.__begin_ = v10;
  self->_background_power.__cap_ = v11;
  v4 = self->_networks.__begin_;
  if (v4)
  {
    self->_networks.__end_ = v4;
    operator delete(v4);
  }

  self->_networks.__begin_ = 0;
  self->_networks.__end_ = 0;
  self->_networks.__cap_ = 0;
  self->_start_time = 0.0;
  self->_end_time = 0.0;
  power_profiler_name = self->_power_profiler_name;
  self->_ane_time = 0.0;
  self->_power_profiler_name = &stru_1F2D44B60;

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"./background_power_%ld.log", getpid()];
  background_power_logfile_name = self->_background_power_logfile_name;
  self->_background_power_logfile_name = v6;

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"./runtime_power_%ld.log", getpid()];
  runtime_power_logfile_name = self->_runtime_power_logfile_name;
  self->_runtime_power_logfile_name = v8;
}

- (void)setPerfProfiler:(BOOL)profiler
{
  profilerCopy = profiler;
  if ([(_EARProfiler *)self _perfProfiler]!= profiler)
  {
    [(_EARProfiler *)self set_perfProfiler:profilerCopy];
    _perfProfiler = [(_EARProfiler *)self _perfProfiler];
    v6 = 0.0;
    if (_perfProfiler)
    {
      getrusage(0, &v7);
      v6 = v7.ru_utime.tv_sec + v7.ru_utime.tv_usec * 0.000001;
    }

    self->_start_time = v6;
  }
}

- (void)setPowerProfiler:(BOOL)profiler powerProfilerName:(id)name
{
  profilerCopy = profiler;
  v35 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ([(_EARProfiler *)self _powerProfiler]!= profilerCopy)
  {
    [(_EARProfiler *)self set_powerProfiler:profilerCopy];
    objc_storeStrong(&self->_power_profiler_name, name);
    if ([(_EARProfiler *)self _powerProfiler])
    {
      v7 = MEMORY[0x1E69E9848];
      fprintf(*MEMORY[0x1E69E9848], "Sampling background power consumption for %d seconds ", 4);
      for (i = 0; i != 4; ++i)
      {
        if ([(_EARProfiler *)self _hasPMP])
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ -fi 1 -G PMP > %@", self->_power_profiler_name, self->_background_power_logfile_name];
          v10 = v9;
          std::string::basic_string[abi:ne200100]<0>(__p, [v9 UTF8String]);
          v28 = 0;
          posix_spawn_file_actions_init(&v28);
          posix_spawn_file_actions_addopen(&v28, 1, "/dev/null", 0, 0);
          posix_spawn_file_actions_addopen(&v28, 2, "/dev/null", 0, 0);
          v27 = 0;
          v29 = "/usr/bin/sudo";
          v30 = "/bin/bash";
          if (v26 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          v31 = "-c";
          v32 = v11;
          v33 = 0;
          posix_spawn(&v27, "/bin/bash", &v28, 0, &v30, 0);
          posix_spawn_file_actions_destroy(&v28);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          usleep(0x16E360u);
          [(_EARProfiler *)self parsePowerSummary:self->_background_power_logfile_name writeTo:&v29];
          v12 = v34;
          if (v34 == 0.0)
          {
            [(_EARProfiler *)self set_hasPMP:0, v34];
            fwrite("(turning off PMP because it's unavailable, power measurements might be less accurate) ", 0x56uLL, 1uLL, *v7);
            v12 = v34;
          }

          v13 = v12;
          self->_background_power.__begin_[i] = v13;
        }

        if (![(_EARProfiler *)self _hasPMP])
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ -fi 1 > %@", self->_power_profiler_name, self->_background_power_logfile_name];
          v15 = v14;
          std::string::basic_string[abi:ne200100]<0>(__p, [v14 UTF8String]);
          v28 = 0;
          posix_spawn_file_actions_init(&v28);
          posix_spawn_file_actions_addopen(&v28, 1, "/dev/null", 0, 0);
          posix_spawn_file_actions_addopen(&v28, 2, "/dev/null", 0, 0);
          v27 = 0;
          v29 = "/usr/bin/sudo";
          v30 = "/bin/bash";
          if (v26 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          v31 = "-c";
          v32 = v16;
          v33 = 0;
          posix_spawn(&v27, "/bin/bash", &v28, 0, &v30, 0);
          posix_spawn_file_actions_destroy(&v28);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          usleep(0x16E360u);
          [(_EARProfiler *)self parsePowerSummary:self->_background_power_logfile_name writeTo:&v29];
          v17 = v34;
          self->_background_power.__begin_[i] = v17;
        }

        fputc(46, *v7);
      }

      fputc(10, *v7);
      if ([(_EARProfiler *)self _hasPMP])
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ -ft -G PMP > %@", self->_power_profiler_name, self->_runtime_power_logfile_name];
        v19 = v18;
        std::string::basic_string[abi:ne200100]<0>(__p, [v18 UTF8String]);
        v28 = 0;
        posix_spawn_file_actions_init(&v28);
        posix_spawn_file_actions_addopen(&v28, 1, "/dev/null", 0, 0);
        posix_spawn_file_actions_addopen(&v28, 2, "/dev/null", 0, 0);
        v27 = 0;
        v29 = "/usr/bin/sudo";
        v30 = "/bin/bash";
        v20 = __p;
        if (v26 < 0)
        {
          v20 = __p[0];
        }

        v31 = "-c";
        v32 = v20;
        v33 = 0;
        posix_spawn(&v27, "/bin/bash", &v28, 0, &v30, 0);
        posix_spawn_file_actions_destroy(&v28);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ -ft > %@", self->_power_profiler_name, self->_runtime_power_logfile_name];
        v22 = v18;
        std::string::basic_string[abi:ne200100]<0>(__p, [v18 UTF8String]);
        v28 = 0;
        posix_spawn_file_actions_init(&v28);
        posix_spawn_file_actions_addopen(&v28, 1, "/dev/null", 0, 0);
        posix_spawn_file_actions_addopen(&v28, 2, "/dev/null", 0, 0);
        v27 = 0;
        v29 = "/usr/bin/sudo";
        v30 = "/bin/bash";
        v23 = __p;
        if (v26 < 0)
        {
          v23 = __p[0];
        }

        v31 = "-c";
        v32 = v23;
        v33 = 0;
        posix_spawn(&v27, "/bin/bash", &v28, 0, &v30, 0);
        posix_spawn_file_actions_destroy(&v28);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"killall %@", self->_power_profiler_name];
      std::string::basic_string[abi:ne200100]<0>(__p, [v18 UTF8String]);
      v28 = 0;
      posix_spawn_file_actions_init(&v28);
      posix_spawn_file_actions_addopen(&v28, 1, "/dev/null", 0, 0);
      posix_spawn_file_actions_addopen(&v28, 2, "/dev/null", 0, 0);
      v27 = 0;
      v29 = "/usr/bin/sudo";
      v30 = "/bin/bash";
      v21 = __p;
      if (v26 < 0)
      {
        v21 = __p[0];
      }

      v31 = "-c";
      v32 = v21;
      v33 = 0;
      posix_spawn(&v27, "/bin/bash", &v28, 0, &v30, 0);
      posix_spawn_file_actions_destroy(&v28);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

- (void)addProfilingNetwork:(void *)network
{
  end = self->_networks.__end_;
  cap = self->_networks.__cap_;
  if (end >= cap)
  {
    begin = self->_networks.__begin_;
    v8 = end - begin;
    if ((v8 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = cap - begin;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>(&self->_networks, v11);
    }

    v12 = (8 * v8);
    *v12 = network;
    v6 = (8 * v8 + 8);
    v13 = self->_networks.__begin_;
    v14 = (self->_networks.__end_ - v13);
    v15 = (v12 - v14);
    memcpy((v12 - v14), v13, v14);
    v16 = self->_networks.__begin_;
    self->_networks.__begin_ = v15;
    self->_networks.__end_ = v6;
    self->_networks.__cap_ = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *end = network;
    v6 = end + 1;
  }

  self->_networks.__end_ = v6;
}

- (void)sample
{
  v16 = *MEMORY[0x1E69E9840];
  ++self->_n_samples;
  if (![(_EARProfiler *)self _memoryProfiler])
  {
    return;
  }

  getrusage(0, &v15);
  max_rss = v15.ru_maxrss * 0.0009765625 * 0.0009765625;
  if (max_rss < self->_max_rss)
  {
    max_rss = self->_max_rss;
  }

  self->_max_rss = max_rss;
  getpid();
  if ((ledger() & 0x80000000) != 0)
  {
    fwrite("Warning: Could not get ledger info for pid\n", 0x2BuLL, 1uLL, *MEMORY[0x1E69E9848]);
    v7 = 0;
  }

  else
  {
    ru_ixrss = v15.ru_ixrss;
    v4 = malloc_type_malloc(96 * SLOWORD(v15.ru_ixrss), 0x1000040565EDBD2uLL);
    if (!v4)
    {
      exit(-1);
    }

    v5 = v4;
    if ((ledger() & 0x80000000) != 0 || ru_ixrss < 1)
    {
      v7 = -1;
    }

    else
    {
      v6 = 0;
      v7 = -1;
      v8 = v5;
      do
      {
        if (!strcmp(v8, "phys_footprint"))
        {
          v7 = v6;
        }

        ++v6;
        v8 += 96;
      }

      while (ru_ixrss != v6);
    }

    free(v5);
  }

  getpid();
  if ((ledger() & 0x80000000) != 0)
  {
    fwrite("Warning: Could not get ledger info for pid.\n", 0x2CuLL, 1uLL, *MEMORY[0x1E69E9848]);
    v11 = 0.0;
    goto LABEL_25;
  }

  v9 = v15.ru_ixrss;
  v10 = malloc_type_malloc(48 * v15.ru_ixrss, 0x1000040EED21634uLL);
  if ((ledger() & 0x80000000) != 0 || v9 <= v7)
  {
    fwrite("Warning: Could not get ledger entry info for pid\n", 0x31uLL, 1uLL, *MEMORY[0x1E69E9848]);
    goto LABEL_22;
  }

  if (v7 == -1)
  {
LABEL_22:
    v11 = 0.0;
    goto LABEL_23;
  }

  v11 = v10[6 * v7] * 0.000000953674316;
LABEL_23:
  free(v10);
LABEL_25:
  jetsam_max = self->_jetsam_max;
  if (jetsam_max < v11)
  {
    jetsam_max = v11;
  }

  v13 = v11 + self->_jetsam_tot;
  self->_jetsam_max = jetsam_max;
  self->_jetsam_tot = v13;
}

- (void)finishProfilingNetworks
{
  if ([(_EARProfiler *)self _perfProfiler])
  {
    begin = self->_networks.__begin_;
    end = self->_networks.__end_;
    if (begin != end)
    {
      do
      {
        v5 = espresso_plan_finish_profiling();
        ane_performance_info = [v5 ane_performance_info];
        self->_ane_time = [ane_performance_info total_ane_time_ns] / 1000000000.0 + self->_ane_time;

        ++begin;
      }

      while (begin != end);
      begin = self->_networks.__begin_;
    }

    self->_networks.__end_ = begin;
  }
}

- (void)finishProfiling
{
  v15 = *MEMORY[0x1E69E9840];
  [(_EARProfiler *)self sample];
  if ([(_EARProfiler *)self _memoryProfiler])
  {
    v3 = getpid();
    v4 = proc_pid_rusage(v3, 6, &buffer);
    jetsam_max = v14 * 0.0009765625 * 0.0009765625;
    if (v4)
    {
      jetsam_max = 0.0;
    }

    if (self->_jetsam_max >= jetsam_max)
    {
      jetsam_max = self->_jetsam_max;
    }

    self->_jetsam_max = jetsam_max;
  }

  if ([(_EARProfiler *)self _perfProfiler])
  {
    getrusage(0, &buffer);
    self->_end_time = buffer.ru_utime.tv_sec + buffer.ru_utime.tv_usec * 0.000001;
    [(_EARProfiler *)self finishProfilingNetworks];
  }

  if ([(_EARProfiler *)self _powerProfiler])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"killall %@", self->_power_profiler_name];
    v7 = v6;
    std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
    v12 = 0;
    posix_spawn_file_actions_init(&v12);
    posix_spawn_file_actions_addopen(&v12, 1, "/dev/null", 0, 0);
    posix_spawn_file_actions_addopen(&v12, 2, "/dev/null", 0, 0);
    v11 = 0;
    buffer.ru_utime.tv_sec = "/usr/bin/sudo";
    *&buffer.ru_utime.tv_usec = "/bin/bash";
    v8 = __p;
    if (v10 < 0)
    {
      v8 = __p[0];
    }

    buffer.ru_stime.tv_sec = "-c";
    *&buffer.ru_stime.tv_usec = v8;
    buffer.ru_maxrss = 0;
    posix_spawn(&v11, "/bin/bash", &v12, 0, &buffer.ru_utime.tv_usec, 0);
    posix_spawn_file_actions_destroy(&v12);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    usleep(0xF4240u);
    [(_EARProfiler *)self parsePowerSummary:self->_runtime_power_logfile_name writeTo:&self->_power_summary];
  }
}

- (id)reportProfilingAsDictionary
{
  v51[4] = *MEMORY[0x1E69E9840];
  v43 = objc_opt_new();
  if ([(_EARProfiler *)self _memoryProfiler])
  {
    n_samples = self->_n_samples;
    v50[0] = @"jetsam max";
    jetsam_tot = self->_jetsam_tot;
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_jetsam_max];
    v6 = jetsam_tot / n_samples;
    *&v6 = v6;
    v51[0] = v5;
    v50[1] = @"jetsam average";
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    v51[1] = v7;
    v50[2] = @"max rss";
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_max_rss];
    v50[3] = @"units";
    v51[2] = v8;
    v51[3] = @"MB";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:4];

    [v43 setObject:v9 forKeyedSubscript:@"memory"];
  }

  if ([(_EARProfiler *)self _perfProfiler])
  {
    v10 = self->_end_time - self->_start_time;
    v48[0] = @"CPU time";
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v49[0] = v11;
    v48[1] = @"ANE time";
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_ane_time];
    v48[2] = @"units";
    v49[1] = v12;
    v49[2] = @"s";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];

    [v43 setObject:v13 forKeyedSubscript:@"perf"];
  }

  if ([(_EARProfiler *)self _powerProfiler])
  {
    begin = self->_background_power.__begin_;
    end = self->_background_power.__end_;
    if (begin == end)
    {
      v20 = NAN;
      v23 = NAN;
    }

    else
    {
      v16 = 0.0;
      v17 = self->_background_power.__begin_;
      do
      {
        v18 = *v17++;
        v16 = v16 + v18;
      }

      while (v17 != end);
      v19 = end - begin;
      v20 = v16 / v19;
      v21 = 0.0;
      do
      {
        v22 = *begin++;
        v21 = v21 + (v22 * v22);
      }

      while (begin != end);
      v23 = v21 / v19;
    }

    v46[0] = @"total energy";
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.total_energy];
    v47[0] = v24;
    v46[1] = @"ANE energy";
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.ane_energy];
    v47[1] = v25;
    v46[2] = @"GPU energy";
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.gpu_energy];
    v47[2] = v26;
    v46[3] = @"DRAM energy";
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.dram_energy];
    v47[3] = v27;
    v46[4] = @"ECPU energy";
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.ecpu_energy];
    v47[4] = v28;
    v46[5] = @"PCPU energy";
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.pcpu_energy];
    v47[5] = v29;
    v46[6] = @"other energy";
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.other_energy];
    v46[7] = @"units";
    v47[6] = v30;
    v47[7] = @"J";
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:8];

    [v43 setObject:v42 forKeyedSubscript:@"energy"];
    v44[0] = @"mean background power";
    v45[0] = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    v44[1] = @"std background power";
    v41 = v45[0];
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:sqrt(v23 - v20 * v20)];
    v45[1] = v31;
    v44[2] = @"total power";
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.total_power];
    v45[2] = v32;
    v44[3] = @"ANE power";
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.ane_power];
    v45[3] = v33;
    v44[4] = @"GPU power";
    v34 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.gpu_power];
    v45[4] = v34;
    v44[5] = @"DRAM power";
    v35 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.dram_power];
    v45[5] = v35;
    v44[6] = @"ECPU power";
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.ecpu_power];
    v45[6] = v36;
    v44[7] = @"PCPU power";
    v37 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.pcpu_power];
    v45[7] = v37;
    v44[8] = @"other power";
    v38 = [MEMORY[0x1E696AD98] numberWithDouble:self->_power_summary.other_power];
    v44[9] = @"units";
    v45[8] = v38;
    v45[9] = @"mW";
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:10];

    [v43 setObject:v39 forKeyedSubscript:@"power"];
  }

  return v43;
}

- (void)reportProfiling
{
  _memoryProfiler = [(_EARProfiler *)self _memoryProfiler];
  v4 = MEMORY[0x1E69E9848];
  if (_memoryProfiler || [(_EARProfiler *)self _perfProfiler]|| [(_EARProfiler *)self _powerProfiler])
  {
    fwrite("================ Profiler Summary ===============\n", 0x32uLL, 1uLL, *v4);
  }

  if ([(_EARProfiler *)self _memoryProfiler])
  {
    v5 = self->_jetsam_tot / self->_n_samples;
    fprintf(*v4, "|             |  Jetsam  |    Peak   |  Average |\n|             |          |  %7.2f  | %7.2f  |\n| Memory (MB) -----------------------------------\n|             |  MAX_RSS |    Peak   |     -    |\n|             |          |  %7.2f  |          |\n=================================================\n", self->_jetsam_max, v5, self->_max_rss);
  }

  if ([(_EARProfiler *)self _perfProfiler])
  {
    fprintf(*v4, "| Time (s)    |    CPU   |    GPU    |    ANE*  |\n|             | %7.2f  |      -    | %7.2f  |\n=================================================\n| * ANE time unavailable for CoreML networks.   |\n=================================================\n", self->_end_time - self->_start_time, self->_ane_time);
  }

  if ([(_EARProfiler *)self _powerProfiler])
  {
    begin = self->_background_power.__begin_;
    end = self->_background_power.__end_;
    if (begin == end)
    {
      v12 = NAN;
      v15 = NAN;
    }

    else
    {
      v8 = 0.0;
      v9 = self->_background_power.__begin_;
      do
      {
        v10 = *v9++;
        v8 = v8 + v10;
      }

      while (v9 != end);
      v11 = end - begin;
      v12 = v8 / v11;
      v13 = 0.0;
      do
      {
        v14 = *begin++;
        v13 = v13 + (v14 * v14);
      }

      while (begin != end);
      v15 = v13 / v11;
    }

    v16 = sqrt(v15 - v12 * v12);
    v17 = *v4;
    if ([(_EARProfiler *)self _hasPMP])
    {
      v18 = "via PMP";
    }

    else
    {
      v18 = "non-PMP";
    }

    *v29 = *&self->_power_summary.total_energy;
    gpu_energy = self->_power_summary.gpu_energy;
    dram_energy = self->_power_summary.dram_energy;
    if ([(_EARProfiler *)self _hasPMP])
    {
      v21 = "via PMP";
    }

    else
    {
      v21 = "non-PMP";
    }

    other_energy = self->_power_summary.other_energy;
    total_power = self->_power_summary.total_power;
    ane_power = self->_power_summary.ane_power;
    v28 = *&self->_power_summary.ecpu_energy;
    gpu_power = self->_power_summary.gpu_power;
    dram_power = self->_power_summary.dram_power;
    if ([(_EARProfiler *)self _hasPMP])
    {
      v27 = "via PMP";
    }

    else
    {
      v27 = "non-PMP";
    }

    fprintf(v17, "| Background  |   Idle   |  Average  |   std    |\n| Power* (mW) |          |   %5.1f   |  %5.1f   |\n| %s     |          |           |          |\n|------------------------------------------------\n|             |  Total  |  ANE  |  GPU  |  DRAM |\n|             |  %6.2f | %5.1f | %5.1f | %5.1f |\n| Energy (J)  -----------------------------------\n| %s     |         |  ECPU |  PCPU | OTHER |\n|             |         | %5.1f | %5.1f | %5.1f |\n|------------------------------------------------\n|             |  Total  |  ANE  |  GPU  |  DRAM |\n|             |   %5d |  %4d |  %4d |  %4d |\n| Power (mW)  -----------------------------------\n| %s     |         |  ECPU |  PCPU | OTHER |\n| ^           |         |  %4d |  %4d |  %4d |\n=================================================\n| * If Idle power consumption is significant,   |\n|   try enabling one of the power settings      |\n|   recommended  above and kill any daemon(s)   |\n|   that are not needed by transcribe.          |\n| ^ Power measurements can be inaccurate on     |\n|   short audios and/or new hardwares.          |\n=================================================\n", v12, v16, v18, v29[0], v29[1], gpu_energy, dram_energy, v21, *&v28, *(&v28 + 1), other_energy, total_power, ane_power, gpu_power, dram_power, v27, self->_power_summary.ecpu_power, self->_power_summary.pcpu_power, self->_power_summary.other_power);
  }
}

- (void)cleanupLogfiles
{
  v9[4] = *MEMORY[0x1E69E9840];
  if (![(_EARProfiler *)self _keepLogFiles])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rm %@ %@", self->_background_power_logfile_name, self->_runtime_power_logfile_name];
    std::string::basic_string[abi:ne200100]<0>(__p, [v3 UTF8String]);
    v8[0] = 0;
    posix_spawn_file_actions_init(v8);
    posix_spawn_file_actions_addopen(v8, 1, "/dev/null", 0, 0);
    posix_spawn_file_actions_addopen(v8, 2, "/dev/null", 0, 0);
    v7 = 0;
    v8[1] = "/usr/bin/sudo";
    v9[0] = "/bin/bash";
    v4 = __p;
    if (v6 < 0)
    {
      v4 = __p[0];
    }

    v9[1] = "-c";
    v9[2] = v4;
    v9[3] = 0;
    posix_spawn(&v7, "/bin/bash", v8, 0, v9, 0);
    posix_spawn_file_actions_destroy(v8);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (void)parsePowerSummary:(id)summary writeTo:(powerSummary *)to
{
  v46 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  *&to->total_energy = 0u;
  *&to->gpu_energy = 0u;
  *&to->pcpu_energy = 0u;
  *&to->other_energy = 0u;
  *&to->ane_power = 0u;
  *&to->ecpu_power = 0u;
  *&to->dram_power = 0u;
  v40 = summaryCopy;
  v39 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:? encoding:? error:?];
  [v39 componentsSeparatedByString:@"\n"];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v7 = v42 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v42;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        if ([(_EARProfiler *)self _hasPMP])
        {
          v15 = [v14 containsString:@"---> "];
          v16 = @"---> Energy Counters";
          if (v15)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v38 = [v14 containsString:@"=> "];
          v16 = @"=> Energy Model";
          if (v38)
          {
LABEL_34:
            v9 = [v14 containsString:v16];
            continue;
          }
        }

        if (v9)
        {
          v17 = 1.0;
          if (([v14 containsString:@"mW]"] & 1) == 0)
          {
            v17 = 0.001;
            if (([v14 containsString:@"uW]"] & 1) == 0)
            {
              if ([v14 containsString:@"nW]"])
              {
                v17 = 0.000001;
              }

              else
              {
                v17 = 0.0;
              }
            }
          }

          v18 = 0.001;
          if (([v14 containsString:@"mJ"] & 1) == 0)
          {
            v18 = 0.000001;
            if (([v14 containsString:@"uJ"] & 1) == 0)
            {
              if ([v14 containsString:@"nJ"])
              {
                v18 = 0.000000001;
              }

              else
              {
                v18 = 0.0;
              }
            }
          }

          v19 = [v14 stringByReplacingOccurrencesOfString:@"\\s+" withString:@" " options:1024 range:{0, objc_msgSend(v14, "length")}];
          v20 = [v19 componentsSeparatedByString:@" "];
          if ([v20 count] >= 7)
          {
            v21 = [v20 objectAtIndexedSubscript:2];
            [v21 doubleValue];
            v23 = v22;

            v24 = [v20 objectAtIndexedSubscript:5];
            [v24 doubleValue];
            v26 = v25;

            v12 = v18 * v23;
            v11 = v17 * v26;
          }

          to->total_energy = v12 + to->total_energy;
          to->total_power = v11 + to->total_power;
          v27 = [v14 containsString:@"ANE"];
          p_ane_power = &to->ane_power;
          p_ane_energy = &to->ane_energy;
          if ((v27 & 1) == 0)
          {
            v30 = [v14 containsString:@"GPU"];
            p_ane_power = &to->gpu_power;
            p_ane_energy = &to->gpu_energy;
            if ((v30 & 1) == 0)
            {
              v31 = [v14 containsString:@"ECPU"];
              p_ane_power = &to->ecpu_power;
              p_ane_energy = &to->ecpu_energy;
              if ((v31 & 1) == 0)
              {
                v32 = [v14 containsString:@"ECORE"];
                p_ane_power = &to->ecpu_power;
                p_ane_energy = &to->ecpu_energy;
                if ((v32 & 1) == 0)
                {
                  v33 = [v14 containsString:@"PCPU"];
                  p_ane_power = &to->pcpu_power;
                  p_ane_energy = &to->pcpu_energy;
                  if ((v33 & 1) == 0)
                  {
                    v34 = [v14 containsString:@"PCORE"];
                    p_ane_power = &to->pcpu_power;
                    p_ane_energy = &to->pcpu_energy;
                    if ((v34 & 1) == 0)
                    {
                      v35 = [v14 containsString:@"DRAM"];
                      v36 = 48;
                      if (v35)
                      {
                        v36 = 40;
                      }

                      p_ane_energy = (&to->total_energy + v36);
                      v37 = 104;
                      if (v35)
                      {
                        v37 = 96;
                      }

                      p_ane_power = (&to->total_energy + v37);
                    }
                  }
                }
              }
            }
          }

          *p_ane_energy = v12 + *p_ane_energy;
          *p_ane_power = v11 + *p_ane_power;

          v9 = 1;
        }

        else
        {
          v9 = 0;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v8);
  }
}

- (id).cxx_construct
{
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  return self;
}

@end