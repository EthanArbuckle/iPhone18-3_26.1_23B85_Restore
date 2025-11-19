@interface OspreyConnectionPreferences
- (BOOL)isDeviceAttestionExpired;
- (BOOL)setDeviceAttestationData:(id)a3 withExpiration:(id)a4;
- (NSData)certificateData;
- (OspreyConnectionPreferences)initWithConnectionHost:(id)a3 keychain:(id)a4;
- (OspreyConnectionPreferences)initWithDictionary:(id)a3 keychain:(id)a4;
- (id)deviceAttestationData;
- (id)dictionaryRepresentation;
- (void)deleteAll;
- (void)deleteCertificateData;
- (void)deleteDeviceAttestationData;
- (void)resetCachedDeviceAttestation;
- (void)setCertificateData:(id)a3;
@end

@implementation OspreyConnectionPreferences

- (OspreyConnectionPreferences)initWithConnectionHost:(id)a3 keychain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = OspreyConnectionPreferences;
  v8 = [(OspreyConnectionPreferences *)&v13 init];
  if (v8)
  {
    v9 = [v6 lowercaseString];
    v10 = [v9 copy];
    connectionHost = v8->_connectionHost;
    v8->_connectionHost = v10;

    objc_storeStrong(&v8->_keychain, a4);
  }

  return v8;
}

- (OspreyConnectionPreferences)initWithDictionary:(id)a3 keychain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"host"];
  v9 = [(OspreyConnectionPreferences *)self initWithConnectionHost:v8 keychain:v7];

  if (v9 == self)
  {
    v10 = [v6 objectForKey:@"deviceAttestationExpireOn"];
    deviceAttestionExpireOn = v9->_deviceAttestionExpireOn;
    v9->_deviceAttestionExpireOn = v10;

    v12 = [v6 objectForKey:@"deviceAttestationVersion"];
    deviceAttestionVersion = v9->_deviceAttestionVersion;
    v9->_deviceAttestionVersion = v12;

    v14 = [v6 objectForKey:@"deviceAuthenticationVersion"];
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
    v4 = [(OspreyConnectionPreferences *)self _certificateDataKey];
    v5 = [(OspreyKeychain *)keychain fetchDataWithIdentifier:v4];
    certificateData = self->_certificateData;
    self->_certificateData = v5;

    self->_certificateDataFetched = 1;
  }

  v7 = self->_certificateData;

  return v7;
}

- (void)setCertificateData:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
    certificateData = self->_certificateData;
    self->_certificateData = v4;

    self->_certificateDataFetched = 1;
    keychain = self->_keychain;
    v7 = self->_certificateData;
    v9 = [(OspreyConnectionPreferences *)self _certificateDataKey];
    [(OspreyKeychain *)keychain saveData:v7 withIdentifier:v9];
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
  v3 = [MEMORY[0x277CBEAA8] date];
  LOBYTE(deviceAttestionExpireOn) = [(NSDate *)deviceAttestionExpireOn compare:v3]== NSOrderedAscending;

  return deviceAttestionExpireOn;
}

- (BOOL)setDeviceAttestationData:(id)a3 withExpiration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_storeStrong(&self->_deviceAttestionExpireOn, a4);
    v8 = [v6 copy];
    deviceAttestationData = self->_deviceAttestationData;
    self->_deviceAttestationData = v8;

    v10 = [(OspreyConnectionPreferences *)self _deviceAttestationDataKey];
    OspreyLoggingInit();
    if (os_log_type_enabled(OspreyLogContextPreferences, OS_LOG_TYPE_DEBUG))
    {
      [OspreyConnectionPreferences setDeviceAttestationData:withExpiration:];
    }

    v11 = [(OspreyKeychain *)self->_keychain saveData:self->_deviceAttestationData withIdentifier:v10];
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
  v3 = [(OspreyConnectionPreferences *)self _deviceAttestationDataKey];
  if ([(OspreyConnectionPreferences *)self isDeviceAttestionExpired])
  {
    [(OspreyKeychain *)self->_keychain deleteDataWithIdentifier:v3];
    deviceAttestationData = self->_deviceAttestationData;
    self->_deviceAttestationData = 0;

    v5 = 0;
  }

  else
  {
    v6 = self->_deviceAttestationData;
    if (!v6)
    {
      v7 = [(OspreyKeychain *)self->_keychain fetchDataWithIdentifier:v3];
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