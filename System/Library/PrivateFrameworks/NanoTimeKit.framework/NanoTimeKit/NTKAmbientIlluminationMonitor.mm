@interface NTKAmbientIlluminationMonitor
- (NTKAmbientIlluminationMonitor)init;
- (NTKAmbientIlluminationMonitorDelegate)delegate;
- (void)_registerForNotifications;
- (void)_setAmbientLux:(double)lux;
- (void)_setDisplayNits:(double)nits;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation NTKAmbientIlluminationMonitor

- (NTKAmbientIlluminationMonitor)init
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = NTKAmbientIlluminationMonitor;
  v2 = [(NTKAmbientIlluminationMonitor *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CFD390]);
    brightnessSystemClient = v2->_brightnessSystemClient;
    v2->_brightnessSystemClient = v3;

    v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = v2;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode Illumination monitor init", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode Illumination monitor dealloc", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NTKAmbientIlluminationMonitor;
  [(NTKAmbientIlluminationMonitor *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    if (obj)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);

      if (!v6)
      {
        [(NTKAmbientIlluminationMonitor *)self _registerForNotifications];
      }
    }

    else
    {
      [(NTKAmbientIlluminationMonitor *)self _unregisterForNotifications];
    }

    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
  }
}

- (void)_registerForNotifications
{
  v28 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  brightnessSystemClient = self->_brightnessSystemClient;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __58__NTKAmbientIlluminationMonitor__registerForNotifications__block_invoke;
  v21 = &unk_27877EEA8;
  objc_copyWeak(&v22, &location);
  [(BrightnessSystemClient *)brightnessSystemClient registerNotificationBlock:&v18 forProperties:&unk_284189F58];
  v4 = [(BrightnessSystemClient *)self->_brightnessSystemClient copyPropertyForKey:@"TrustedLux", v18, v19, v20, v21];
  v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode Illumination monitor initial lux %@", buf, 0x16u);
  }

  if (v4)
  {
    [v4 doubleValue];
  }

  else
  {
    v6 = -1.0;
  }

  self->_ambientLux = v6;
  v7 = [(BrightnessSystemClient *)self->_brightnessSystemClient copyPropertyForKey:@"DisplayBrightness"];
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 objectForKey:@"NitsPhysical"];
  v13 = objc_opt_class();
  v14 = v12;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    [v16 doubleValue];
  }

  else
  {
    v17 = -1.0;
  }

  self->_displayNits = v17;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __58__NTKAmbientIlluminationMonitor__registerForNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v5 isEqualToString:@"TrustedLux"])
    {
      v8 = objc_opt_class();
      v9 = v6;
      if (v8)
      {
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v14 = v10;

      if (!v14)
      {
        goto LABEL_59;
      }

      [v14 doubleValue];
      v16 = WeakRetained[3];
      v17 = fabs(v15);
      v18 = v17 < 0.00000011920929;
      v19 = fabs(v16);
      if (v19 >= 0.00000011920929)
      {
        v18 = 0;
      }

      if (v17 < 0.00000011920929 || v19 < 0.00000011920929)
      {
        goto LABEL_30;
      }

      v18 = v15 == -1.0;
      if (v16 != -1.0)
      {
        v18 = 0;
      }

      if (v15 == -1.0 || v16 == -1.0)
      {
LABEL_30:
        if (!v18)
        {
LABEL_27:
          v21 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(WeakRetained + 2);
            *buf = 134218498;
            v41 = WeakRetained;
            v42 = 2112;
            v43 = v14;
            v44 = 2048;
            v45 = v22;
            _os_log_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode Illumination monitor received lux %@ (skipped %lu)", buf, 0x20u);
          }

          WeakRetained[2] = 0.0;
          [v14 doubleValue];
          *(WeakRetained + 3) = v23;
          goto LABEL_32;
        }
      }

      else
      {
        v20 = v15 / v16 + -1.0;
        if (v20 < 0.0)
        {
          v20 = -v20;
        }

        if (v20 >= 0.05)
        {
          goto LABEL_27;
        }
      }

      ++*(WeakRetained + 2);
LABEL_32:
      v14 = v14;
      BSDispatchMain();

      goto LABEL_59;
    }

    if (![v5 isEqualToString:@"DisplayBrightness"])
    {
      v14 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v41 = WeakRetained;
        v42 = 2112;
        v43 = v5;
        v44 = 2112;
        v45 = v6;
        _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode Illumination monitor received key %@ with value %@", buf, 0x20u);
      }

      goto LABEL_59;
    }

    v11 = objc_opt_class();
    v12 = v6;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v24 = [v14 objectForKey:@"NitsPhysical"];

    if (!v24)
    {
LABEL_59:

      goto LABEL_60;
    }

    v25 = [v14 objectForKey:@"NitsPhysical"];
    v26 = objc_opt_class();
    v27 = v25;
    if (v26)
    {
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    if (!v29)
    {
LABEL_58:

      goto LABEL_59;
    }

    [v29 doubleValue];
    v31 = WeakRetained[5];
    v32 = fabs(v30);
    v33 = v32 < 0.00000011920929;
    v34 = fabs(v31);
    if (v34 >= 0.00000011920929)
    {
      v33 = 0;
    }

    if (v32 < 0.00000011920929 || v34 < 0.00000011920929)
    {
      goto LABEL_55;
    }

    v33 = v30 == -1.0;
    if (v31 != -1.0)
    {
      v33 = 0;
    }

    if (v30 == -1.0 || v31 == -1.0)
    {
LABEL_55:
      if (!v33)
      {
LABEL_52:
        v36 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(WeakRetained + 4);
          *buf = 134218498;
          v41 = WeakRetained;
          v42 = 2112;
          v43 = v29;
          v44 = 2048;
          v45 = v37;
          _os_log_impl(&dword_22D9C5000, v36, OS_LOG_TYPE_DEFAULT, "[%p] AutoNightMode Illumination monitor received nits %@ (skipped %lu)", buf, 0x20u);
        }

        WeakRetained[4] = 0.0;
        [v29 doubleValue];
        *(WeakRetained + 5) = v38;
        goto LABEL_57;
      }
    }

    else
    {
      v35 = v30 / v31 + -1.0;
      if (v35 < 0.0)
      {
        v35 = -v35;
      }

      if (v35 >= 0.1)
      {
        goto LABEL_52;
      }
    }

    ++*(WeakRetained + 4);
LABEL_57:
    v39 = v29;
    BSDispatchMain();

    goto LABEL_58;
  }

LABEL_60:
}

uint64_t __58__NTKAmbientIlluminationMonitor__registerForNotifications__block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) doubleValue];

  return [v1 _setAmbientLux:?];
}

uint64_t __58__NTKAmbientIlluminationMonitor__registerForNotifications__block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) doubleValue];

  return [v1 _setDisplayNits:?];
}

- (void)_setAmbientLux:(double)lux
{
  self->_ambientLux = lux;
  if (lux < 0.0)
  {
    v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "AutoNightMode negative ambient lux", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained ambientIlluminationMonitor:self receivedAmbientLux:lux];

  v7 = objc_loadWeakRetained(&self->_delegate);
  if (!v7)
  {
    v8 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "AutoNightMode delegate is gone", v9, 2u);
    }
  }
}

- (void)_setDisplayNits:(double)nits
{
  self->_displayNits = nits;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained ambientIlluminationMonitor:self receivedDisplayNits:nits];

  v6 = objc_loadWeakRetained(&self->_delegate);
  if (!v6)
  {
    v7 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "AutoNightMode delegate is gone", v8, 2u);
    }
  }
}

- (NTKAmbientIlluminationMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end