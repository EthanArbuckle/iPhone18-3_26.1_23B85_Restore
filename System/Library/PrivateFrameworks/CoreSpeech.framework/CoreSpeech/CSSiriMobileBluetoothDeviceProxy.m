@interface CSSiriMobileBluetoothDeviceProxy
- (CSSiriMobileBluetoothDeviceProxy)initWithAddress:(id)a3 dataSource:(id)a4 queue:(id)a5;
- (CSSiriMobileBluetoothDeviceProxy)initWithDeviceUID:(id)a3 dataSource:(id)a4 queue:(id)a5;
- (NSString)description;
- (id)deviceInfo;
- (id)identifier;
- (void)_accessBTDeviceAndAccessoryManagerUsingBlock:(id)a3;
- (void)_enumerateObserversUsingBlock:(id)a3;
- (void)_fetchDeviceInfoWithCompletion:(id)a3;
- (void)_getDeviceInfo:(id)a3;
- (void)_invalidate;
- (void)_reload:(BOOL)a3;
- (void)_updateDeviceInfo:(id)a3;
- (void)addObserver:(id)a3;
- (void)connect:(id)a3;
- (void)dealloc;
- (void)disconnect:(id)a3;
- (void)getConversationAwareness:(id)a3;
- (void)getDeviceInfo:(id)a3;
- (void)getHeadphoneInEarDetectionState:(id)a3;
- (void)getHeadphoneListeningMode:(id)a3;
- (void)getPersonalVolume:(id)a3;
- (void)invalidate;
- (void)prewarm;
- (void)reload;
- (void)removeObserver:(id)a3;
- (void)setConversationAwareness:(BOOL)a3 completion:(id)a4;
- (void)setHeadphoneListeningMode:(int64_t)a3 completion:(id)a4;
- (void)setPersonalVolume:(BOOL)a3 completion:(id)a4;
- (void)updateDeviceInfo:(id)a3;
@end

@implementation CSSiriMobileBluetoothDeviceProxy

- (void)_enumerateObserversUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    if (observers)
    {
      v6 = [(NSHashTable *)observers setRepresentation];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __66__CSSiriMobileBluetoothDeviceProxy__enumerateObserversUsingBlock___block_invoke;
      v7[3] = &unk_2784C5E20;
      v8 = v4;
      [v6 enumerateObjectsUsingBlock:v7];
    }
  }
}

- (void)_invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[CSSiriMobileBluetoothDeviceProxy _invalidate]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  objc_storeWeak(&self->_dataSource, 0);
  deviceInfo = self->_deviceInfo;
  self->_deviceInfo = 0;

  headphoneInEarDetectionState = self->_headphoneInEarDetectionState;
  self->_headphoneInEarDetectionState = 0;

  self->_headphoneListeningMode = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CSSiriMobileBluetoothDeviceProxy__invalidate__block_invoke;
  v8[3] = &unk_2784C5DF8;
  v8[4] = self;
  [(CSSiriMobileBluetoothDeviceProxy *)self _enumerateObserversUsingBlock:v8];
  observers = self->_observers;
  self->_observers = 0;

  v7 = *MEMORY[0x277D85DE8];
}

void __47__CSSiriMobileBluetoothDeviceProxy__invalidate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDeviceDidInvalidate:*(a1 + 32)];
  }
}

- (void)_accessBTDeviceAndAccessoryManagerUsingBlock:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x277CEF0A0];
    v6 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v20 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
      v21 = 2112;
      v22 = self;
      _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Getting BTDevice and BTAccessoryManager for %@...", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      deviceUID = self->_deviceUID;
      if (deviceUID)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke;
        v17[3] = &unk_2784C5DA8;
        v17[4] = self;
        v18 = v4;
        [WeakRetained getBTDeviceWithDeviceUID:deviceUID completion:v17];
        v9 = v18;
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }

      address = self->_address;
      if (address)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke_2;
        v15[3] = &unk_2784C5DA8;
        v15[4] = self;
        v16 = v4;
        [WeakRetained getBTDeviceWithAddress:address completion:v15];
        v9 = v16;
        goto LABEL_13;
      }

      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
        v21 = 2112;
        v22 = self;
        v14 = "%s Device UID and address of %@ are nil.";
LABEL_19:
        _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
      }
    }

    else
    {
      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
        v21 = 2112;
        v22 = self;
        v14 = "%s Data source of %@ is nil.";
        goto LABEL_19;
      }
    }

    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
      v21 = 2112;
      v22 = self;
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s Failed getting BTDevice and BTAccessoryManager for %@.", buf, 0x16u);
    }

    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_14;
  }

LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
}

void __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 136315906;
    v15 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]_block_invoke";
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = a3;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Got BTDevice %p and BTAccessoryManager %p for %@.", buf, 0x2Au);
  }

  v8 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke_125;
  block[3] = &unk_2784C5DD0;
  v11 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

void __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    *buf = 136315906;
    v15 = "[CSSiriMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]_block_invoke_2";
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = a3;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Got BTDevice %p and BTAccessoryManager %p for %@.", buf, 0x2Au);
  }

  v8 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CSSiriMobileBluetoothDeviceProxy__accessBTDeviceAndAccessoryManagerUsingBlock___block_invoke_126;
  block[3] = &unk_2784C5DD0;
  v11 = *(a1 + 40);
  v12 = a2;
  v13 = a3;
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_fetchDeviceInfoWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[CSSiriMobileBluetoothDeviceProxy _fetchDeviceInfoWithCompletion:]";
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Fetching device info for %@...", buf, 0x16u);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__CSSiriMobileBluetoothDeviceProxy__fetchDeviceInfoWithCompletion___block_invoke;
    v7[3] = &unk_2784C5DA8;
    v7[4] = self;
    v8 = v4;
    [(CSSiriMobileBluetoothDeviceProxy *)self _accessBTDeviceAndAccessoryManagerUsingBlock:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __67__CSSiriMobileBluetoothDeviceProxy__fetchDeviceInfoWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CEF0A0];
  if (!a2)
  {
    v34 = 0;
    goto LABEL_41;
  }

  v7 = _CSSiriBTDeviceGetAddress(a2);
  v51 = 0;
  v52 = 0;
  DeviceId = BTDeviceGetDeviceId();
  v9 = DeviceId != 0;
  if (DeviceId)
  {
    v10 = DeviceId;
    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 1024;
      LODWORD(v54) = v10;
      _os_log_error_impl(&dword_222E4D000, v11, OS_LOG_TYPE_ERROR, "%s Failed getting vendor id and product id from BTDevice %p (result = %d).", buf, 0x1Cu);
    }
  }

  v50 = 0;
  IsAppleAudioDevice = BTDeviceIsAppleAudioDevice();
  if (IsAppleAudioDevice)
  {
    v13 = IsAppleAudioDevice;
    v14 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 1024;
      LODWORD(v54) = v13;
      _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, "%s Failed getting vendor id and product id from BTDevice %p (result = %d).", buf, 0x1Cu);
    }

    v9 = 1;
  }

  v48 = 0;
  v49 = 0;
  if (a3)
  {
    FeatureCapability = BTAccessoryManagerGetFeatureCapability();
    if (FeatureCapability)
    {
      v16 = FeatureCapability;
      v17 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        v54 = a3;
        LOWORD(v55) = 1024;
        *(&v55 + 2) = v16;
        _os_log_error_impl(&dword_222E4D000, v17, OS_LOG_TYPE_ERROR, "%s Failed getting InEar capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
      }

      v9 = 1;
    }

    v18 = BTAccessoryManagerGetFeatureCapability();
    if (v18)
    {
      v19 = v18;
      v20 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        v54 = a3;
        LOWORD(v55) = 1024;
        *(&v55 + 2) = v19;
        _os_log_error_impl(&dword_222E4D000, v20, OS_LOG_TYPE_ERROR, "%s Failed getting DoAP capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
      }

      v9 = 1;
    }
  }

  v47 = 0;
  v21 = BTAccessoryManagerGetFeatureCapability();
  if (v21)
  {
    v22 = v21;
    v23 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v54 = a3;
      LOWORD(v55) = 1024;
      *(&v55 + 2) = v22;
      _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s Failed getting ANC capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v9 = 1;
  }

  v46 = 0;
  v24 = BTAccessoryManagerGetFeatureCapability();
  if (v24)
  {
    v25 = v24;
    v26 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v54 = a3;
      LOWORD(v55) = 1024;
      *(&v55 + 2) = v25;
      _os_log_error_impl(&dword_222E4D000, v26, OS_LOG_TYPE_ERROR, "%s Failed getting Transparency capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v9 = 1;
  }

  v45 = 0;
  v27 = BTAccessoryManagerGetFeatureCapability();
  if (v27)
  {
    v28 = v27;
    v29 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v54 = a3;
      LOWORD(v55) = 1024;
      *(&v55 + 2) = v28;
      _os_log_error_impl(&dword_222E4D000, v29, OS_LOG_TYPE_ERROR, "%s Failed getting Software Volume capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v9 = 1;
  }

  v44 = 0;
  AnnounceMessagesSupport = BTAccessoryManagerGetAnnounceMessagesSupport();
  if (AnnounceMessagesSupport)
  {
    v31 = AnnounceMessagesSupport;
    v32 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v54 = a3;
      LOWORD(v55) = 1024;
      *(&v55 + 2) = v31;
      _os_log_error_impl(&dword_222E4D000, v32, OS_LOG_TYPE_ERROR, "%s Failed getting Announce Messages capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    v43 = 0;
    AnnounceCallsSupport = BTAccessoryManagerGetAnnounceCallsSupport();
    if (!AnnounceCallsSupport)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v43 = 0;
  AnnounceCallsSupport = BTAccessoryManagerGetAnnounceCallsSupport();
  if (AnnounceCallsSupport)
  {
LABEL_37:
    v35 = AnnounceCallsSupport;
    v36 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_CSSiriBTDeviceGetDeviceInfo";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      v54 = a3;
      LOWORD(v55) = 1024;
      *(&v55 + 2) = v35;
      _os_log_error_impl(&dword_222E4D000, v36, OS_LOG_TYPE_ERROR, "%s Failed getting Announce Calls capability from BTDevice %p via BTAccessoryManager %p (result = %d).", buf, 0x26u);
    }

    goto LABEL_39;
  }

  if (!v9)
  {
    v41 = MEMORY[0x277CEF1A8];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___CSSiriBTDeviceGetDeviceInfo_block_invoke;
    v54 = &unk_2784C5E48;
    v55 = v7;
    v56 = v52;
    v57 = HIDWORD(v51);
    v58 = v50;
    v59 = v49;
    v60 = v48;
    v61 = v44;
    v62 = v47;
    v63 = v46;
    v64 = v43;
    v34 = [v41 newWithBuilder:buf];

    goto LABEL_40;
  }

LABEL_39:
  v34 = 0;
LABEL_40:

LABEL_41:
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __67__CSSiriMobileBluetoothDeviceProxy__fetchDeviceInfoWithCompletion___block_invoke_2;
  v42[3] = &unk_2784C5D80;
  v42[4] = *(a1 + 32);
  v37 = [v34 mutatedCopyWithMutator:v42];

  v38 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v39 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[CSSiriMobileBluetoothDeviceProxy _fetchDeviceInfoWithCompletion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v37;
    *&buf[22] = 2112;
    v54 = v39;
    _os_log_impl(&dword_222E4D000, v38, OS_LOG_TYPE_INFO, "%s Fetched device info %@ for %@.", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_updateDeviceInfo:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF0A0];
  v6 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[CSSiriMobileBluetoothDeviceProxy _updateDeviceInfo:]";
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s deviceInfo = %@", buf, 0x16u);
  }

  deviceInfo = self->_deviceInfo;
  if (deviceInfo != v4 && ([(AFBluetoothDeviceInfo *)deviceInfo isEqual:v4]& 1) == 0)
  {
    v8 = self->_deviceInfo;
    v9 = [(AFBluetoothDeviceInfo *)v4 copy];
    v10 = self->_deviceInfo;
    self->_deviceInfo = v9;

    v11 = self->_deviceInfo;
    v12 = *v5;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v20 = "[CSSiriMobileBluetoothDeviceProxy _updateDeviceInfo:]";
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s deviceInfo changed from %@ to %@", buf, 0x20u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__CSSiriMobileBluetoothDeviceProxy__updateDeviceInfo___block_invoke;
    v16[3] = &unk_2784C5D58;
    v16[4] = self;
    v17 = v8;
    v18 = v11;
    v13 = v11;
    v14 = v8;
    [(CSSiriMobileBluetoothDeviceProxy *)self _enumerateObserversUsingBlock:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __54__CSSiriMobileBluetoothDeviceProxy__updateDeviceInfo___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 bluetoothDevice:a1[4] deviceInfoDidChangeFrom:a1[5] to:a1[6]];
  }
}

- (void)_getDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self->_deviceInfo)
    {
      v4[2](v4);
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __51__CSSiriMobileBluetoothDeviceProxy__getDeviceInfo___block_invoke;
      v6[3] = &unk_2784C5D30;
      v6[4] = self;
      v7 = v4;
      [(CSSiriMobileBluetoothDeviceProxy *)self _fetchDeviceInfoWithCompletion:v6];
    }
  }
}

void __51__CSSiriMobileBluetoothDeviceProxy__getDeviceInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updateDeviceInfo:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)_reload:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_deviceInfo)
  {
    v3 = !a3;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v9 = "[CSSiriMobileBluetoothDeviceProxy _reload:]";
      v10 = 2112;
      v11 = self;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Reloading device info for %@...", buf, 0x16u);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__CSSiriMobileBluetoothDeviceProxy__reload___block_invoke;
    v7[3] = &unk_2784C6108;
    v7[4] = self;
    [(CSSiriMobileBluetoothDeviceProxy *)self _fetchDeviceInfoWithCompletion:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __44__CSSiriMobileBluetoothDeviceProxy__reload___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _updateDeviceInfo:v3];
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[CSSiriMobileBluetoothDeviceProxy _reload:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Reloaded device info %@ for %@.", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CSSiriMobileBluetoothDeviceProxy_invalidate__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setPersonalVolume:(BOOL)a3 completion:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[CSSiriMobileBluetoothDeviceProxy setPersonalVolume:completion:]";
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Method not supported", &v8, 0xCu);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    v6 = [objc_alloc(MEMORY[0x277CEF1A0]) initWithValue:0 status:3];
    v4[2](v4, v6);
  }

LABEL_4:

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setConversationAwareness:(BOOL)a3 completion:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v8 = 136315138;
    v9 = "[CSSiriMobileBluetoothDeviceProxy setConversationAwareness:completion:]";
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Method not supported", &v8, 0xCu);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    v6 = [objc_alloc(MEMORY[0x277CEF1A0]) initWithValue:0 status:3];
    v4[2](v4, v6);
  }

LABEL_4:

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getPersonalVolume:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[CSSiriMobileBluetoothDeviceProxy getPersonalVolume:]";
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Method not supported", &v7, 0xCu);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    v5 = [objc_alloc(MEMORY[0x277CEF1A0]) initWithValue:0 status:3];
    v3[2](v3, v5);
  }

LABEL_4:

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getConversationAwareness:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[CSSiriMobileBluetoothDeviceProxy getConversationAwareness:]";
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Method not supported", &v7, 0xCu);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    v5 = [objc_alloc(MEMORY[0x277CEF1A0]) initWithValue:0 status:3];
    v3[2](v3, v5);
  }

LABEL_4:

  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__CSSiriMobileBluetoothDeviceProxy_removeObserver___block_invoke;
    v7[3] = &unk_2784C6FA8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__CSSiriMobileBluetoothDeviceProxy_addObserver___block_invoke;
    v7[3] = &unk_2784C6FA8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

uint64_t __48__CSSiriMobileBluetoothDeviceProxy_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)disconnect:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CSSiriMobileBluetoothDeviceProxy_disconnect___block_invoke;
  v7[3] = &unk_2784C6E98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __47__CSSiriMobileBluetoothDeviceProxy_disconnect___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__CSSiriMobileBluetoothDeviceProxy_disconnect___block_invoke_2;
  v2[3] = &unk_2784C5D08;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _accessBTDeviceAndAccessoryManagerUsingBlock:v2];
}

uint64_t __47__CSSiriMobileBluetoothDeviceProxy_disconnect___block_invoke_2(uint64_t a1)
{
  v2 = BTDeviceDisconnect();
  v3 = _CSSiriBTResultGetError(v2);
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3 != 0);
  }

  return MEMORY[0x2821F9730]();
}

- (void)connect:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CSSiriMobileBluetoothDeviceProxy_connect___block_invoke;
  v7[3] = &unk_2784C6E98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __44__CSSiriMobileBluetoothDeviceProxy_connect___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__CSSiriMobileBluetoothDeviceProxy_connect___block_invoke_2;
  v2[3] = &unk_2784C5D08;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _accessBTDeviceAndAccessoryManagerUsingBlock:v2];
}

uint64_t __44__CSSiriMobileBluetoothDeviceProxy_connect___block_invoke_2(uint64_t a1)
{
  v2 = BTDeviceConnect();
  v3 = _CSSiriBTResultGetError(v2);
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3 != 0);
  }

  return MEMORY[0x2821F9730]();
}

- (void)setHeadphoneListeningMode:(int64_t)a3 completion:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v7 = 136315138;
    v8 = "[CSSiriMobileBluetoothDeviceProxy setHeadphoneListeningMode:completion:]";
    _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Method not supported", &v7, 0xCu);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    v4[2](v4, 0);
  }

LABEL_4:

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getHeadphoneListeningMode:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[CSSiriMobileBluetoothDeviceProxy getHeadphoneListeningMode:]";
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Method not supported", &v6, 0xCu);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    v3[2](v3, 1);
  }

LABEL_4:

  v5 = *MEMORY[0x277D85DE8];
}

- (void)getHeadphoneInEarDetectionState:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "[CSSiriMobileBluetoothDeviceProxy getHeadphoneInEarDetectionState:]";
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Method not supported", &v6, 0xCu);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    v3[2](v3, 0);
  }

LABEL_4:

  v5 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__CSSiriMobileBluetoothDeviceProxy_getDeviceInfo___block_invoke;
    v7[3] = &unk_2784C6E98;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (id)deviceInfo
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__23232;
  v20 = __Block_byref_object_dispose__23233;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23232;
  v14 = __Block_byref_object_dispose__23233;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CSSiriMobileBluetoothDeviceProxy_deviceInfo__block_invoke;
  block[3] = &unk_2784C5CE0;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(queue, block);
  v3 = v11[5];
  if (v3 && (v4 = dispatch_time(0, 4000000000), dispatch_semaphore_wait(v3, v4)))
  {
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[CSSiriMobileBluetoothDeviceProxy deviceInfo]";
      _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Slow path timed out after 4 seconds.", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v17[5];
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __46__CSSiriMobileBluetoothDeviceProxy_deviceInfo__block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 32);
  if (v2)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v2);
  }

  else
  {
    v3 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[CSSiriMobileBluetoothDeviceProxy deviceInfo]_block_invoke";
      _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s Using slow path...", buf, 0xCu);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v5 = dispatch_semaphore_create(0);
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[4];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__CSSiriMobileBluetoothDeviceProxy_deviceInfo__block_invoke_117;
    v10[3] = &unk_2784C5CB8;
    v12 = Current;
    v11 = *(a1 + 5);
    [v8 _getDeviceInfo:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __46__CSSiriMobileBluetoothDeviceProxy_deviceInfo__block_invoke_117(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 48);
    v11 = 136315394;
    v12 = "[CSSiriMobileBluetoothDeviceProxy deviceInfo]_block_invoke";
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Slow path took %f seconds.", &v11, 0x16u);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
  v10 = *MEMORY[0x277D85DE8];
}

- (id)identifier
{
  v3 = [(NSUUID *)self->_deviceUID UUIDString];
  address = v3;
  if (!v3)
  {
    address = self->_address;
  }

  v5 = address;

  return address;
}

- (void)prewarm
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CSSiriMobileBluetoothDeviceProxy_prewarm__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)reload
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CSSiriMobileBluetoothDeviceProxy_reload__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateDeviceInfo:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CSSiriMobileBluetoothDeviceProxy_updateDeviceInfo___block_invoke;
  v7[3] = &unk_2784C6FA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSSiriMobileBluetoothDeviceProxy)initWithDeviceUID:(id)a3 dataSource:(id)a4 queue:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CSSiriMobileBluetoothDeviceProxy;
  v11 = [(CSSiriMobileBluetoothDeviceProxy *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    deviceUID = v11->_deviceUID;
    v11->_deviceUID = v12;

    v14 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[CSSiriMobileBluetoothDeviceProxy initWithDeviceUID:dataSource:queue:]";
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    objc_storeWeak(&v11->_dataSource, v9);
    objc_storeStrong(&v11->_queue, a5);
    queue = v11->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__CSSiriMobileBluetoothDeviceProxy_initWithDeviceUID_dataSource_queue___block_invoke;
    block[3] = &unk_2784C6FD0;
    v19 = v11;
    dispatch_async(queue, block);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

void __71__CSSiriMobileBluetoothDeviceProxy_initWithDeviceUID_dataSource_queue___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v9 = "[CSSiriMobileBluetoothDeviceProxy initWithDeviceUID:dataSource:queue:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_INFO, "%s Loading device info for %@...", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__CSSiriMobileBluetoothDeviceProxy_initWithDeviceUID_dataSource_queue___block_invoke_116;
  v6[3] = &unk_2784C6108;
  v7 = v4;
  [v7 _fetchDeviceInfoWithCompletion:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __71__CSSiriMobileBluetoothDeviceProxy_initWithDeviceUID_dataSource_queue___block_invoke_116(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _updateDeviceInfo:v3];
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[CSSiriMobileBluetoothDeviceProxy initWithDeviceUID:dataSource:queue:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Loaded device info %@ for %@.", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (CSSiriMobileBluetoothDeviceProxy)initWithAddress:(id)a3 dataSource:(id)a4 queue:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = CSSiriMobileBluetoothDeviceProxy;
  v11 = [(CSSiriMobileBluetoothDeviceProxy *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    address = v11->_address;
    v11->_address = v12;

    v14 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[CSSiriMobileBluetoothDeviceProxy initWithAddress:dataSource:queue:]";
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    objc_storeWeak(&v11->_dataSource, v9);
    objc_storeStrong(&v11->_queue, a5);
    queue = v11->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CSSiriMobileBluetoothDeviceProxy_initWithAddress_dataSource_queue___block_invoke;
    block[3] = &unk_2784C6FD0;
    v19 = v11;
    dispatch_async(queue, block);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

void __69__CSSiriMobileBluetoothDeviceProxy_initWithAddress_dataSource_queue___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 136315394;
    v9 = "[CSSiriMobileBluetoothDeviceProxy initWithAddress:dataSource:queue:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_INFO, "%s Loading device info for %@...", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__CSSiriMobileBluetoothDeviceProxy_initWithAddress_dataSource_queue___block_invoke_115;
  v6[3] = &unk_2784C6108;
  v7 = v4;
  [v7 _fetchDeviceInfoWithCompletion:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __69__CSSiriMobileBluetoothDeviceProxy_initWithAddress_dataSource_queue___block_invoke_115(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _updateDeviceInfo:v3];
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[CSSiriMobileBluetoothDeviceProxy initWithAddress:dataSource:queue:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Loaded device info %@ for %@.", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[CSSiriMobileBluetoothDeviceProxy dealloc]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = CSSiriMobileBluetoothDeviceProxy;
  [(CSSiriMobileBluetoothDeviceProxy *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  if (self->_deviceUID)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v11.receiver = self;
    v11.super_class = CSSiriMobileBluetoothDeviceProxy;
    v4 = [(CSSiriMobileBluetoothDeviceProxy *)&v11 description];
    v5 = [v3 initWithFormat:@"%@ {deviceUID = %@}", v4, self->_deviceUID];
LABEL_5:
    v7 = v5;

    goto LABEL_6;
  }

  if (self->_address)
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v10.receiver = self;
    v10.super_class = CSSiriMobileBluetoothDeviceProxy;
    v4 = [(CSSiriMobileBluetoothDeviceProxy *)&v10 description];
    v5 = [v6 initWithFormat:@"%@ {address = %@}", v4, self->_address];
    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = CSSiriMobileBluetoothDeviceProxy;
  v7 = [(CSSiriMobileBluetoothDeviceProxy *)&v9 description];
LABEL_6:

  return v7;
}

@end