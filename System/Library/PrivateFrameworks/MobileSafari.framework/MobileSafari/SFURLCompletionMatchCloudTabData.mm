@interface SFURLCompletionMatchCloudTabData
- (SFURLCompletionMatchCloudTabData)initWithCloudTabItem:(id)a3 device:(id)a4;
- (WBSCloudTabProvider)device;
@end

@implementation SFURLCompletionMatchCloudTabData

- (SFURLCompletionMatchCloudTabData)initWithCloudTabItem:(id)a3 device:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 url];
  v10 = [v9 absoluteString];

  v11 = [v7 title];
  v12 = [objc_alloc(MEMORY[0x1E69E20F0]) initWithTitle:v11 address:v10 collectionType:0];
  v19.receiver = self;
  v19.super_class = SFURLCompletionMatchCloudTabData;
  v13 = [(SFURLCompletionMatchBookmarkData *)&v19 initWithBookmark:v12];
  v14 = v13;
  if (v13)
  {
    v13->_onlyContainsCloudTab = 1;
    v15 = [v8 disambiguatedName];
    cloudTabDeviceName = v14->_cloudTabDeviceName;
    v14->_cloudTabDeviceName = v15;

    objc_storeWeak(&v14->_device, v8);
    objc_storeStrong(&v14->_cloudTab, a3);
    v17 = v14;
  }

  return v14;
}

- (WBSCloudTabProvider)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end