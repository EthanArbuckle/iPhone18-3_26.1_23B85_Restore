@interface CMContinuityCaptureLockScreenLayoutMonitor
- (CMContinuityCaptureLockScreenLayoutMonitor)init;
- (CMContinuityCaptureLockScreenLayoutMonitorDelegate)delegate;
- (void)_handleLayout:(id)a3;
- (void)dealloc;
@end

@implementation CMContinuityCaptureLockScreenLayoutMonitor

- (CMContinuityCaptureLockScreenLayoutMonitor)init
{
  v11.receiver = self;
  v11.super_class = CMContinuityCaptureLockScreenLayoutMonitor;
  v2 = [(CMContinuityCaptureLockScreenLayoutMonitor *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lockScreenInLayout = 0;
    v2->_shieldFrontMostInLayout = 1;
    v4 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    [v4 setNeedsUserInteractivePriority:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__CMContinuityCaptureLockScreenLayoutMonitor_init__block_invoke;
    v9[3] = &unk_278D5CDF8;
    v5 = v3;
    v10 = v5;
    [v4 setTransitionHandler:v9];
    v6 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v4];
    layoutMonitor = v5->_layoutMonitor;
    v5->_layoutMonitor = v6;
  }

  return v3;
}

void __50__CMContinuityCaptureLockScreenLayoutMonitor_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__CMContinuityCaptureLockScreenLayoutMonitor_init__block_invoke_2;
  v6[3] = &unk_278D5C008;
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  layoutMonitor = self->_layoutMonitor;
  self->_layoutMonitor = 0;

  v4.receiver = self;
  v4.super_class = CMContinuityCaptureLockScreenLayoutMonitor;
  [(CMContinuityCaptureLockScreenLayoutMonitor *)&v4 dealloc];
}

- (void)_handleLayout:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v45 = self;
    v46 = 2112;
    v47[0] = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ New layout: %@", buf, 0x16u);
  }

  lockScreenInLayout = self->_lockScreenInLayout;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (!v4)
  {
    v7 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v45 = self;
      _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring nil layout", buf, 0xCu);
    }

    goto LABEL_48;
  }

  v53 = *MEMORY[0x277D0ABC0];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
  if (![v4 displayBacklightLevel])
  {
    self->_lockScreenInLayout = 1;
    v9 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v45 = self;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Ignoring layout with minimum (0) backlight level.", buf, 0xCu);
    }

    goto LABEL_47;
  }

  v8 = [v4 elements];
  v9 = [v8 bs_firstObjectPassingTest:&__block_literal_global_6];

  if (v9)
  {
    v43 = [v9 sb_isTransitioning];
  }

  else
  {
    v43 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v10 = [v4 elements];
  v11 = [v10 countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (!v11)
  {

    v30 = 0;
    self->_lockScreenInLayout = 0;
    v39 = -1;
    v42 = -1;
    goto LABEL_38;
  }

  v12 = v11;
  v36 = lockScreenInLayout;
  v37 = v9;
  v38 = v4;
  v41 = self;
  v13 = 0;
  v14 = *v50;
  v15 = *MEMORY[0x277D66F60];
  v40 = *MEMORY[0x277D0ABA0];
  v42 = -1;
  v39 = -1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v50 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v49 + 1) + 8 * i);
      v18 = [v17 identifier];
      v19 = [v7 containsObject:v18];

      if (v19)
      {
        v20 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v17 identifier];
          *buf = 138543618;
          v45 = v41;
          v46 = 2112;
          v47[0] = v21;
          v22 = v20;
          v23 = "%{public}@ Ignoring %@ in layout";
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v24 = [v17 identifier];
      v25 = [v24 isEqualToString:v15] & v43;

      if (v25 == 1)
      {
        v20 = CMContinuityCaptureLog(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v17 identifier];
          *buf = 138543618;
          v45 = v41;
          v46 = 2112;
          v47[0] = v21;
          v22 = v20;
          v23 = "%{public}@ Ignoring %@ in layout during shield transition period";
LABEL_23:
          _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
        }

LABEL_24:

        continue;
      }

      if ([v17 level] > v42)
      {
        v42 = [v17 level];
      }

      v26 = [v17 bundleIdentifier];
      v27 = [&unk_2854ECD18 containsObject:v26];

      if (v27 && [v17 level] > v39)
      {
        v39 = [v17 level];
      }

      v28 = [v17 identifier];
      v29 = [v28 isEqualToString:v40];

      v13 |= v29;
    }

    v12 = [v10 countByEnumeratingWithState:&v49 objects:v48 count:16];
  }

  while (v12);

  v30 = v13 & 1;
  self = v41;
  v41->_lockScreenInLayout = v30;
  lockScreenInLayout = v36;
  if (v39 == -1)
  {
    v39 = -1;
  }

  else
  {
    v41->_firstShieldLayoutReceived = 1;
  }

  v9 = v37;
  v4 = v38;
LABEL_38:
  if (self->_firstShieldLayoutReceived)
  {
    v31 = v39 >= v42;
    if (self->_shieldFrontMostInLayout != v31 || v30 != lockScreenInLayout)
    {
      self->_shieldFrontMostInLayout = v31;
      v32 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        shieldFrontMostInLayout = self->_shieldFrontMostInLayout;
        v34 = self->_lockScreenInLayout;
        *buf = 138543874;
        v45 = self;
        v46 = 1024;
        LODWORD(v47[0]) = shieldFrontMostInLayout;
        WORD2(v47[0]) = 1024;
        *(v47 + 6) = v34;
        _os_log_impl(&dword_242545000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Update layout change, shieldFrontMostInLayout:%d lockScreenInLayout:%d", buf, 0x18u);
      }

      v35 = [(CMContinuityCaptureLockScreenLayoutMonitor *)self delegate];
      [v35 lockScreenLayoutMonitor:self didUpdateLayoutWithShieldFrontMost:self->_shieldFrontMostInLayout lockscreenInLayout:self->_lockScreenInLayout];
      goto LABEL_46;
    }
  }

  else
  {
    v35 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v45 = self;
      _os_log_impl(&dword_242545000, v35, OS_LOG_TYPE_INFO, "%{public}@ Ignoring layout. Haven't received first layout with ShieldUI in it.", buf, 0xCu);
    }

LABEL_46:
  }

LABEL_47:

LABEL_48:
}

uint64_t __60__CMContinuityCaptureLockScreenLayoutMonitor__handleLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [&unk_2854ECD18 containsObject:v2];

  return v3;
}

- (CMContinuityCaptureLockScreenLayoutMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end