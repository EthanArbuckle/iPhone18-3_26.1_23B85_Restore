@interface DDRProgress
- (DDRProgress)initWithTotalDuration:(double)a3 totalTaskCount:(int64_t)a4 progressTickInterval:(double)a5;
- (DDRProgressDelegate)delegate;
- (void)_incrementCurrentResetTaskProgress;
- (void)_lock_noteTaskCompleted;
- (void)_lock_resetTaskTimer;
- (void)noteTaskBeginningWithName:(id)a3 duration:(double)a4;
- (void)noteTaskCompleted;
@end

@implementation DDRProgress

- (DDRProgress)initWithTotalDuration:(double)a3 totalTaskCount:(int64_t)a4 progressTickInterval:(double)a5
{
  v11.receiver = self;
  v11.super_class = DDRProgress;
  v8 = [(DDRProgress *)&v11 init];
  if (v8)
  {
    v9 = DDRLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v13 = a3;
      v14 = 2048;
      v15 = a4;
      v16 = 2048;
      v17 = a5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Initialize DDRProgress with totalDuration: %lf, totalTaskCount: %ld and tick interval of %lf", buf, 0x20u);
    }

    [(DDRProgress *)v8 setTotalEstimateTimeOfCompletion:a3];
    [(DDRProgress *)v8 setCompletedProgress:0.0];
    [(DDRProgress *)v8 setCurrentTaskEstimate:0.0];
    [(DDRProgress *)v8 setCurrentTaskProgress:0.0];
    [(DDRProgress *)v8 setAllResetTasksCompleted:0];
    [(DDRProgress *)v8 setNumberOfTaskRemaining:a4];
    [(DDRProgress *)v8 setNumberOfTotalTask:a4];
    [(DDRProgress *)v8 setTickInterval:a5];
    [(DDRProgress *)v8 setLock:0];
  }

  return v8;
}

- (void)noteTaskBeginningWithName:(id)a3 duration:(double)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = DDRLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting reset task:%@", buf, 0xCu);
  }

  if (![(DDRProgress *)self allResetTasksCompleted])
  {
    v8 = DDRLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2048;
      v22 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting currrent reset task:%@, estimate time:%lf, have not complete all tasks", buf, 0x16u);
    }

    [(DDRProgress *)self setCurrentResetTask:v6];
    [(DDRProgress *)self setCurrentTaskEstimate:a4];
    objc_initWeak(buf, self);
    v9 = [BSTimer alloc];
    [(DDRProgress *)self tickInterval];
    v11 = v10;
    [(DDRProgress *)self tickInterval];
    v13 = v12;
    v14 = dispatch_get_global_queue(2, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000032D4;
    v17[3] = &unk_100014688;
    objc_copyWeak(&v18, buf);
    v15 = [v9 initWithFireInterval:v14 repeatInterval:v17 leewayInterval:v11 queue:v13 handler:0.0];
    [(DDRProgress *)self setTickTimer:v15];

    v16 = [(DDRProgress *)self tickTimer];
    [v16 schedule];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)noteTaskCompleted
{
  os_unfair_lock_lock(&self->_lock);
  [(DDRProgress *)self _lock_noteTaskCompleted];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_incrementCurrentResetTaskProgress
{
  os_unfair_lock_lock(&self->_lock);
  v3 = DDRLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(DDRProgress *)self currentResetTask];
    *v44 = 138412290;
    *&v44[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Increment task progress for: %@", v44, 0xCu);
  }

  if ([(DDRProgress *)self allResetTasksCompleted])
  {
    v5 = DDRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(DDRProgress *)self currentResetTask];
      *v44 = 138412290;
      *&v44[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In Increment task progress for: %@, all task have completed", v44, 0xCu);
    }

LABEL_33:

    goto LABEL_34;
  }

  v7 = [(DDRProgress *)self currentResetTask];
  v8 = [v7 length];

  if (!v8)
  {
    v5 = DDRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "In Increment task progress, the current task already completed, might need to adjust the task estimate time of completion", v44, 2u);
    }

    goto LABEL_33;
  }

  [(DDRProgress *)self currentTaskEstimate];
  if (v9 != 0.0)
  {
    [(DDRProgress *)self currentTaskProgress];
    v14 = v13;
    [(DDRProgress *)self currentTaskEstimate];
    if (v14 >= v15)
    {
      goto LABEL_21;
    }

    v16 = DDRLogForCategory(1uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(DDRProgress *)self currentResetTask];
      [(DDRProgress *)self currentTaskProgress];
      v19 = v18;
      [(DDRProgress *)self currentTaskEstimate];
      *v44 = 138412802;
      *&v44[4] = v17;
      *&v44[12] = 2048;
      *&v44[14] = v19;
      v45 = 2048;
      v46 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Current task %@ progress is %lf, smaller than current estimate progress: %lf", v44, 0x20u);
    }

    [(DDRProgress *)self currentTaskProgress];
    v22 = v21;
    [(DDRProgress *)self tickInterval];
    v24 = v22 + v23;
    [(DDRProgress *)self currentTaskEstimate];
    if (v24 >= v25)
    {
      [(DDRProgress *)self currentTaskEstimate];
      v29 = v28;
      [(DDRProgress *)self currentTaskProgress];
      v31 = v29 - v30;
      v10 = DDRLogForCategory(1uLL);
      v32 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v31 < 0.003)
      {
        if (!v32)
        {
          goto LABEL_11;
        }

        v11 = [(DDRProgress *)self currentResetTask];
        *v44 = 138412290;
        *&v44[4] = v11;
        v12 = "Not enough time to increment progress of task: %@, just complete it. Consider increase the estimate time of completion";
        goto LABEL_10;
      }

      if (v32)
      {
        v33 = [(DDRProgress *)self currentResetTask];
        *v44 = 138412290;
        *&v44[4] = v33;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We are slowing down the progress increment to be 1/3 of the time left of current reset task: %@", v44, 0xCu);
      }

      [(DDRProgress *)self currentTaskProgress];
      v24 = v31 / 3.0 + v34;
    }

    else
    {
      v26 = DDRLogForCategory(1uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(DDRProgress *)self currentResetTask];
        *v44 = 138412290;
        *&v44[4] = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Current task %@ progress increment as normal", v44, 0xCu);
      }
    }

    [(DDRProgress *)self setCurrentTaskProgress:v24];
    v35 = DDRLogForCategory(1uLL);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(DDRProgress *)self currentResetTask];
      *v44 = 138412290;
      *&v44[4] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Update the current task progress: %@", v44, 0xCu);
    }

    [(DDRProgress *)self completedProgress];
    v38 = v37;
    [(DDRProgress *)self currentTaskProgress];
    v40 = v38 + v39;
    [(DDRProgress *)self totalEstimateTimeOfCompletion];
    v42 = v40 / v41;
    v43 = DDRLogForCategory(1uLL);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 134217984;
      *&v44[4] = v42;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Compute total progress percentage: %lf", v44, 0xCu);
    }

    v5 = [(DDRProgress *)self delegate];
    [v5 progressDidUpdateWithPercentage:v42];
    goto LABEL_33;
  }

  v10 = DDRLogForCategory(1uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(DDRProgress *)self currentResetTask];
    *v44 = 138412290;
    *&v44[4] = v11;
    v12 = "In Increment task progress for: %@, the estimate time of completion is 0";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, v44, 0xCu);
  }

LABEL_11:

LABEL_21:
  [(DDRProgress *)self _lock_noteTaskCompleted];
LABEL_34:
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_resetTaskTimer
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(DDRProgress *)self tickTimer];
  [v3 cancel];

  [(DDRProgress *)self setTickTimer:0];
}

- (void)_lock_noteTaskCompleted
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = DDRLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Completing current reset task", v36, 2u);
  }

  v4 = [(DDRProgress *)self currentResetTask];
  v5 = [v4 length];

  if (v5)
  {
    [(DDRProgress *)self _lock_resetTaskTimer];
    [(DDRProgress *)self currentTaskEstimate];
    v7 = v6;
    [(DDRProgress *)self completedProgress];
    [(DDRProgress *)self setCompletedProgress:v7 + v8];
    v9 = DDRLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(DDRProgress *)self currentResetTask];
      [(DDRProgress *)self currentTaskEstimate];
      v12 = v11;
      [(DDRProgress *)self completedProgress];
      v14 = v13;
      [(DDRProgress *)self totalEstimateTimeOfCompletion];
      *v36 = 138413058;
      *&v36[4] = v10;
      *&v36[12] = 2048;
      *&v36[14] = v12;
      v37 = 2048;
      v38 = v14;
      v39 = 2048;
      v40 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Current reset task: %@ is completed, currentTaskEstimate is: %lf, completed progress is: %lf, totalEstimate is: %lf", v36, 0x2Au);
    }

    [(DDRProgress *)self completedProgress];
    v17 = v16;
    [(DDRProgress *)self totalEstimateTimeOfCompletion];
    v19 = v17 / v18;
    v20 = DDRLogForCategory(1uLL);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *v36 = 134217984;
    *&v36[4] = v19;
    v21 = "Total percentage in complete current reset task is: %lf";
    goto LABEL_8;
  }

  [(DDRProgress *)self totalEstimateTimeOfCompletion];
  if (v31 == 0.0)
  {
    v32 = [(DDRProgress *)self currentResetTask];
    v33 = [v32 length];

    if (v33)
    {
      [(DDRProgress *)self _lock_resetTaskTimer];
      v34 = [(DDRProgress *)self numberOfTotalTask];
      v35 = (v34 - [(DDRProgress *)self numberOfTaskRemaining]);
      v19 = v35 / [(DDRProgress *)self numberOfTotalTask];
      v20 = DDRLogForCategory(1uLL);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *v36 = 134217984;
      *&v36[4] = v19;
      v21 = "Total percentage in complete current reset task is(estimate time 0): %lf";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, v36, 0xCu);
LABEL_9:

      v22 = [(DDRProgress *)self delegate];
      [v22 progressDidUpdateWithPercentage:v19];

      [(DDRProgress *)self setCurrentTaskProgress:0.0];
      [(DDRProgress *)self setCurrentTaskEstimate:0.0];
      [(DDRProgress *)self setCurrentResetTask:0];
      [(DDRProgress *)self setNumberOfTaskRemaining:[(DDRProgress *)self numberOfTaskRemaining]- 1];
    }
  }

  [(DDRProgress *)self completedProgress];
  v24 = v23;
  [(DDRProgress *)self totalEstimateTimeOfCompletion];
  v26 = v24 - v25;
  v27 = DDRLogForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(DDRProgress *)self numberOfTaskRemaining];
    *v36 = 134218240;
    *&v36[4] = v26;
    *&v36[12] = 2048;
    *&v36[14] = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Difference is %lf, remaining task is %ld", v36, 0x16u);
  }

  if (v26 == 0.0 && ![(DDRProgress *)self numberOfTaskRemaining])
  {
    [(DDRProgress *)self _lock_resetTaskTimer];
    v29 = DDRLogForCategory(1uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "All tasks have completed", v36, 2u);
    }

    [(DDRProgress *)self setAllResetTasksCompleted:1];
    v30 = [(DDRProgress *)self delegate];
    [v30 didCompleteAllTasks];
  }
}

- (DDRProgressDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end