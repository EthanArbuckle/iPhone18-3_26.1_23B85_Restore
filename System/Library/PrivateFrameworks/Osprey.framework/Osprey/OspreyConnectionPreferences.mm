@interface OspreyConnectionPreferences
- (BOOL)isDeviceAttestionExpired;
- (BOOL)setDeviceAttestationData:(id)data withExpiration:(id)expiration;
- (NSData)certificateData;
- (OspreyConnectionPreferences)initWithConnectionHost:(id)host keychain:(id)keychain;
- (OspreyConnectionPreferences)initWithDictionary:(id)dictionary keychain:(id)keychain;
- (id)deviceAttestationData;
- (id)dictionaryRepresentation;
- (void)deleteAll;
- (void)deleteCertificateData;
- (void)deleteDeviceAttestationData;
- (void)resetCachedDeviceAttestation;
- (void)setCertificateData:(id)data;
@end

@implementation OspreyConnectionPreferences

- (OspreyConnectionPreferences)initWithConnectionHost:(id)host keychain:(id)keychain
{
  hostCopy = host;
  keychainCopy = keychain;
  v13.receiver = self;
  v13.super_class = OspreyConnectionPreferences;
  v8 = [(OspreyConnectionPreferences *)&v13 init];
  if (v8)
  {
    lowercaseString = [hostCopy lowercaseString];
    v10 = [lowercaseString copy];
    connectionHost = v8->_connectionHost;
    v8->_connectionHost = v10;

    objc_storeStrong(&v8->_keychain, keychain);
  }

  return v8;
}

- (OspreyConnectionPreferences)initWithDictionary:(id)dictionary keychain:(id)keychain
{
  dictionaryCopy = dictionary;
  keychainCopy = keychain;
  v8 = [dictionaryCopy objectForKey:@"host"];
  v9 = [(OspreyConnectionPreferences *)self initWithConnectionHost:v8 keychain:keychainCopy];

  if (v9 == self)
  {
    v10 = [dictionaryCopy objectForKey:@"deviceAttestationExpireOn"];
    deviceAttestionExpireOn = v9->_deviceAttestionExpireOn;
    v9->_deviceAttestionExpireOn = v10;

    v12 = [dictionaryCopy objectForKey:@"deviceAttestationVersion"];
    deviceAttestionVersion = v9->_deviceAttestionVersion;
    v9->_deviceAttestionVersion = v12;

    v14 = [dictionaryCopy objectForKey:@"deviceAuthenticationVersion"];
    deviceAuthenticationVersion = v9->_deviceAuthenticationVersion;
    v9->_deviceAuthenticationVersion = v14;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setValue:self->_connectionHost forKey:@"host"];
  [v3 setValue:self->_deviceAttestionExpireOn forKey:@"deviceAttestationExpireOn"];
  [v3 setValue:self->_deviceAttestionVersion forKey:@"deviceAttestationVersion"];
  [v3 setValue:self->_deviceAuthenticationVersion forKey:@"deviceAuthenticationVersion"];

  return v3;
}

- (void)deleteAll
{
  [(OspreyConnectionPreferences *)self deleteCertificateData];

  [(OspreyConnectionPreferences *)self deleteDeviceAttestationData];
}

- (void)resetCachedDeviceAttestation
{
  [(OspreyConnectionPreferences *)self deleteCertificateData];
  [(OspreyConnectionPreferences *)self deleteDeviceAttestationData];
  deviceAttestionExpireOn = self->_deviceAttestionExpireOn;
  self->_deviceAttestionExpireOn = 0;

  deviceAttestionVersion = self->_deviceAttestionVersion;
  self->_deviceAttestionVersion = 0;
}

- (NSData)certificateData
{
  if (!self->_certificateDataFetched)
  {
    keychain = self->_keychain;
    _certificateDataKey = [(OspreyConnectionPreferences *)self _certificateDataKey];
    v5 = [(OspreyKeychain *)keychain fetchDataWithIdentifier:_certificateDataKey];
    certificateData = self->_certificateData;
    self->_certificateData = v5;

    self->_certificateDataFetched = 1;
  }

  v7 = self->_certificateData;

  return v7;
}

- (void)setCertificateData:(id)data
{
  if (data)
  {
    v4 = [data copy];
    certificateData = self->_certificateData;
    self->_certificateData = v4;

    self->_certificateDataFetched = 1;
    keychain = self->_keychain;
    v7 = self->_certificateData;
    _certificateDataKey = [(OspreyConnectionPreferences *)self _certificateDataKey];
    [(OspreyKeychain *)keychain saveData:v7 withIdentifier:_certificateDataKey];
  }

  else
  {
    OspreyLoggingInit();
    v8 = OspreyLogContextAbsinthe;
    if (os_log_type_enabled(OspreyLogContextAbsinthe, OS_LOG_TYPE_ERROR))
    {
      [OspreyConnectionPreferences setCertificateData:v8];
    }
  }
}

- (void)deleteCertificateData
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyConnectionPreferences deleteCertificateData]";
  _os_log_error_impl(&dword_25DDE6000, log, OS_LOG_TYPE_ERROR, "%s Error deleting certificate from keychain.", &v1, 0xCu);
}

- (BOOL)isDeviceAttestionExpired
{
  deviceAttestionExpireOn = self->_deviceAttestionExpireOn;
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(deviceAttestionExpireOn) = [(NSDate *)deviceAttestionExpireOn compare:date]== NSOrderedAscending;

  return deviceAttestionExpireOn;
}

- (BOOL)setDeviceAttestationData:(id)data withExpiration:(id)expiration
{
  dataCopy = data;
  expirationCopy = expiration;
  if (dataCopy)
  {
    objc_storeStrong(&self->_deviceAttestionExpireOn, expiration);
    v8 = [dataCopy copy];
    deviceAttestationData = self->_deviceAttestationData;
    self->_deviceAttestationData = v8;

    _deviceAttestationDataKey = [(OspreyConnectionPreferences *)self _deviceAttestationDataKey];
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextPreferences, OS_LOG_TYPE_DEBUG))
    {
      [OspreyConnectionPreferences setDeviceAttestationData:withExpiration:];
    }

    v11 = [(OspreyKeychain *)self->_keychain saveData:self->_deviceAttestationData withIdentifier:_deviceAttestationDataKey];
  }

  else
  {
    deviceAttestionExpireOn = self->_deviceAttestionExpireOn;
    self->_deviceAttestionExpireOn = 0;

    v13 = self->_deviceAttestationData;
    self->_deviceAttestationData = 0;

    OspreyLoggingInit();
    v14 = OspreyLogContextPreferences;
    if (os_log_type_enabled(OspreyLogContextPreferences, OS_LOG_TYPE_ERROR))
    {
      [OspreyConnectionPreferences setDeviceAttestationData:v14 withExpiration:?];
    }

    v11 = 0;
  }

  return v11;
}

- (id)deviceAttestationData
{
  _deviceAttestationDataKey = [(OspreyConnectionPreferences *)self _deviceAttestationDataKey];
  if ([(OspreyConnectionPreferences *)self isDeviceAttestionExpired])
  {
    [(OspreyKeychain *)self->_keychain deleteDataWithIdentifier:_deviceAttestationDataKey];
    deviceAttestationData = self->_deviceAttestationData;
    self->_deviceAttestationData = 0;

    v5 = 0;
  }

  else
  {
    v6 = self->_deviceAttestationData;
    if (!v6)
    {
      v7 = [(OspreyKeychain *)self->_keychain fetchDataWithIdentifier:_deviceAttestationDataKey];
      v8 = self->_deviceAttestationData;
      self->_deviceAttestationData = v7;

      v6 = self->_deviceAttestationData;
    }

    v5 = v6;
  }

  return v5;
}

- (void)deleteDeviceAttestationData
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25DDE6000, v0, OS_LOG_TYPE_DEBUG, "%s Deleted with key: '%@'", v1, 0x16u);
}

- (void)setCertificateData:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyConnectionPreferences setCertificateData:]";
  _os_log_error_impl(&dword_25DDE6000, log, OS_LOG_TYPE_ERROR, "%s Attempted to save nil data for certificate.", &v1, 0xCu);
}

- (void)setDeviceAttestationData:withExpiration:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_1();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_25DDE6000, v2, OS_LOG_TYPE_DEBUG, "%s Saved with key: '%@' and expiration: %@", v3, 0x20u);
}

- (void)setDeviceAttestationData:(uint64_t)a1 withExpiration:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 136315394;
  v4 = "[OspreyConnectionPreferences setDeviceAttestationData:withExpiration:]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_25DDE6000, a2, OS_LOG_TYPE_ERROR, "%s Attempted to save nil data for device attestation data for host: %@", &v3, 0x16u);
}

@end