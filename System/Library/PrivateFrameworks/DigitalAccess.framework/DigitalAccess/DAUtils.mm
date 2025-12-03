@interface DAUtils
+ (id)decryptVehicleMobilizationData:(id)data forKeyWithIdentifier:(id)identifier;
@end

@implementation DAUtils

+ (id)decryptVehicleMobilizationData:(id)data forKeyWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  encryptedRequest = [dataCopy encryptedRequest];
  ephemeralPublicKey = [dataCopy ephemeralPublicKey];

  v9 = SESEndPointPrivacyDecryption();

  v10 = 0;
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "+[DAUtils decryptVehicleMobilizationData:forKeyWithIdentifier:]";
    v16 = 1024;
    v17 = 33;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : Result of decrypting vehicleMobilizationData: %@", buf, 0x1Cu);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

@end