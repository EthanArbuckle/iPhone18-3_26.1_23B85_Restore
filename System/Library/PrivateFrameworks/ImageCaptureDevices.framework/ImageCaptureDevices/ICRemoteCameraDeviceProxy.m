@interface ICRemoteCameraDeviceProxy
- (ICRemoteCameraDeviceProxy)initWithPrimaryIdentifierString:(id)a3 uuidString:(id)a4 localizedName:(id)a5;
- (NSDictionary)deviceContext;
- (void)dealloc;
@end

@implementation ICRemoteCameraDeviceProxy

- (ICRemoteCameraDeviceProxy)initWithPrimaryIdentifierString:(id)a3 uuidString:(id)a4 localizedName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICRemoteCameraDeviceProxy;
  v12 = [(ICRemoteCameraDeviceProxy *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_primaryIdentifierString, a3);
    objc_storeStrong(&v13->_uuidString, a4);
    objc_storeStrong(&v13->_localizedName, a5);
  }

  return v13;
}

- (NSDictionary)deviceContext
{
  v10[3] = *MEMORY[0x29EDCA608];
  v9[0] = @"ICDevicePrimaryIdentifier";
  v3 = [(ICRemoteCameraDeviceProxy *)self primaryIdentifierString];
  v10[0] = v3;
  v9[1] = @"ICDeviceHandle";
  v4 = [(ICRemoteCameraDeviceProxy *)self uuidString];
  v10[1] = v4;
  v9[2] = @"ICDeviceName";
  v5 = [(ICRemoteCameraDeviceProxy *)self localizedName];
  v10[2] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)dealloc
{
  v3 = [(ICRemoteCameraDeviceProxy *)self camera];
  [v3 setDelegate:0];

  [(ICRemoteCameraDeviceProxy *)self setCamera:0];
  [(ICRemoteCameraDeviceProxy *)self setUuidString:0];
  [(ICRemoteCameraDeviceProxy *)self setLocalizedName:0];
  v4.receiver = self;
  v4.super_class = ICRemoteCameraDeviceProxy;
  [(ICRemoteCameraDeviceProxy *)&v4 dealloc];
}

@end