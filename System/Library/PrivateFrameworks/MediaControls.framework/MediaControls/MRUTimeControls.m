@interface MRUTimeControls
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot;
- (BOOL)isEqual:(id)a3;
- (MRUTimeControls)initWithResponseItem:(id)a3;
- (double)elapsedTime;
- (double)elapsedTimeForDate:(id)a3;
- (double)startTime;
- (id)description;
- (void)setDurationSnapshot:(id *)a3;
- (void)setElapsedTime:(double)a3;
@end

@implementation MRUTimeControls

- (MRUTimeControls)initWithResponseItem:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = MRUTimeControls;
  v5 = [(MRUTimeControls *)&v26 init];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [v4 seekCommand];
  seekCommand = v5->_seekCommand;
  v5->_seekCommand = v6;

  v8 = [(MPCPlayerSeekCommand *)v5->_seekCommand changePositionToElapsedInterval:0.0];
  v9 = v8;
  if (!v8)
  {
    v5->_scrubbable = 0;

    if (v4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v10 = 0;
    v5->_isEnabled = 0;
    *&v5->_durationSnapshot.isLiveContent = 0;
    *&v5->_durationSnapshot.endTime = 0u;
    *&v5->_durationSnapshot.elapsedDuration = 0u;
    *&v5->_durationSnapshot.snapshotTime = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    goto LABEL_9;
  }

  if (!v4)
  {
    v5->_scrubbable = 1;

    goto LABEL_8;
  }

  [v4 duration];
  v5->_scrubbable = (v25 & 1) == 0;

LABEL_6:
  [v4 duration];
  v5->_isEnabled = v24 > 0.0;
  [v4 duration];
  *&v5->_durationSnapshot.snapshotTime = v20;
  *&v5->_durationSnapshot.endTime = v21;
  *&v5->_durationSnapshot.elapsedDuration = v22;
  *&v5->_durationSnapshot.isLiveContent = v23;
  [v4 duration];
  v10 = v19;
LABEL_9:
  v5->_isLive = v10;
  v11 = [v4 localizedDurationString];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = +[MRUStringsProvider scrubberLive];
  }

  liveText = v5->_liveText;
  v5->_liveText = v13;

LABEL_13:
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(MRUTimeControls *)self startTime];
  v6 = v5;
  [(MRUTimeControls *)self duration];
  v8 = @"No";
  if (self->_scrubbable)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  if (self->_isEnabled)
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  if (self->_isLive)
  {
    v8 = @"Yes";
  }

  return [v3 stringWithFormat:@"%@ start: %f | duration: %f | elapsed: %f | scrubbable: %@ | enabled: %@ | live: %@ - %@", v4, v6, v7, *&self->_durationSnapshot.elapsedDuration, v9, v10, v8, self->_liveText];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      if (v5)
      {
        [(MRUTimeControls *)v5 durationSnapshot];
        v7 = v27;
      }

      else
      {
        v7 = 0.0;
      }

      v9 = v7 == self->_durationSnapshot.snapshotTime;
      [(MRUTimeControls *)v6 startTime];
      v11 = v10;
      [(MRUTimeControls *)self startTime];
      if (v11 != v12)
      {
        v9 = 0;
      }

      [(MRUTimeControls *)v6 duration];
      v14 = v13;
      [(MRUTimeControls *)self duration];
      if (v14 != v15)
      {
        v9 = 0;
      }

      if (v6)
      {
        [(MRUTimeControls *)v6 durationSnapshot];
        v16 = v26;
      }

      else
      {
        v16 = 0.0;
      }

      [(MRUTimeControls *)self durationSnapshot];
      if (v16 != v25)
      {
        v9 = 0;
      }

      [(MRUTimeControls *)v6 rate];
      v18 = v17;
      [(MRUTimeControls *)self rate];
      if (v18 != v19)
      {
        v9 = 0;
      }

      if (self->_scrubbable != [(MRUTimeControls *)v6 scrubbable])
      {
        v9 = 0;
      }

      if (self->_isEnabled != [(MRUTimeControls *)v6 isEnabled])
      {
        v9 = 0;
      }

      v20 = self->_isLive == [(MRUTimeControls *)v6 isLive]&& v9;
      v21 = [(MRUTimeControls *)v6 liveText];
      v22 = v21;
      if (v21 == self->_liveText)
      {
        v23 = 1;
      }

      else
      {
        v23 = [(NSString *)v21 isEqual:?];
      }

      v8 = v20 & v23;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (double)startTime
{
  startTime = self->_durationSnapshot.startTime;
  [(MRUTimeControls *)self duration];
  if (startTime < result)
  {
    return startTime;
  }

  return result;
}

- (double)elapsedTime
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  duration = self->_durationSnapshot.elapsedDuration + (v3 - self->_durationSnapshot.snapshotTime) * self->_durationSnapshot.rate;
  if (duration >= self->_durationSnapshot.duration)
  {
    duration = self->_durationSnapshot.duration;
  }

  v5 = fmax(duration, 0.0);
  [(MRUTimeControls *)self startTime];
  v7 = v6;
  [(MRUTimeControls *)self duration];
  if (v5 < result)
  {
    result = v5;
  }

  if (v7 >= result)
  {
    return v7;
  }

  return result;
}

- (void)setElapsedTime:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  [(MRUTimeControls *)self duration];
  v6 = v5;
  v7 = MCLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2050;
    *&buf[14] = a3;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ set time to: %{public}f", buf, 0x16u);
  }

  v8 = fmax(a3, 0.0);
  if (v8 < v6)
  {
    v6 = v8;
  }

  v9 = [(MPCPlayerSeekCommand *)self->_seekCommand changePositionToElapsedInterval:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__MRUTimeControls_setElapsedTime___block_invoke;
  v13[3] = &unk_1E7664118;
  v13[4] = self;
  *&v13[5] = a3;
  [MEMORY[0x1E69B0848] performRequest:v9 completion:v13];
  v10 = *&self->_durationSnapshot.startTime;
  *&buf[16] = self->_durationSnapshot.duration;
  v14 = *&self->_durationSnapshot.rate;
  *buf = v10;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_durationSnapshot.snapshotTime = v11;
  v12 = v14;
  *&self->_durationSnapshot.startTime = *buf;
  self->_durationSnapshot.duration = *&buf[16];
  self->_durationSnapshot.elapsedDuration = v6;
  *&self->_durationSnapshot.rate = v12;
}

void __34__MRUTimeControls_setElapsedTime___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543874;
    v8 = v5;
    v9 = 2050;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ complete set time to: %{public}f | error %{public}@", &v7, 0x20u);
  }
}

- (double)elapsedTimeForDate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF00] now];
  }

  [v4 timeIntervalSinceReferenceDate];
  duration = self->_durationSnapshot.elapsedDuration + (v5 - self->_durationSnapshot.snapshotTime) * self->_durationSnapshot.rate;
  if (duration >= self->_durationSnapshot.duration)
  {
    duration = self->_durationSnapshot.duration;
  }

  v7 = fmax(duration, 0.0);

  return v7;
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot
{
  v3 = *&self->var7;
  *&retstr->var0 = *&self->var4;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[1].var1;
  *&retstr->var7 = self[1].var3;
  return self;
}

- (void)setDurationSnapshot:(id *)a3
{
  v3 = *&a3->var0;
  v4 = *&a3->var2;
  v5 = *&a3->var4;
  *&self->_durationSnapshot.isLiveContent = *&a3->var7;
  *&self->_durationSnapshot.endTime = v4;
  *&self->_durationSnapshot.elapsedDuration = v5;
  *&self->_durationSnapshot.snapshotTime = v3;
}

@end