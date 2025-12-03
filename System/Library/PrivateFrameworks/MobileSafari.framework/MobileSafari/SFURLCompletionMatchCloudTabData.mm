@interface SFURLCompletionMatchCloudTabData
- (SFURLCompletionMatchCloudTabData)initWithCloudTabItem:(id)item device:(id)device;
- (WBSCloudTabProvider)device;
@end

@implementation SFURLCompletionMatchCloudTabData

- (SFURLCompletionMatchCloudTabData)initWithCloudTabItem:(id)item device:(id)device
{
  itemCopy = item;
  deviceCopy = device;
  v9 = [itemCopy url];
  absoluteString = [v9 absoluteString];

  title = [itemCopy title];
  v12 = [objc_alloc(MEMORY[0x1E69E20F0]) initWithTitle:title address:absoluteString collectionType:0];
  v19.receiver = self;
  v19.super_class = SFURLCompletionMatchCloudTabData;
  v13 = [(SFURLCompletionMatchBookmarkData *)&v19 initWithBookmark:v12];
  v14 = v13;
  if (v13)
  {
    v13->_onlyContainsCloudTab = 1;
    disambiguatedName = [deviceCopy disambiguatedName];
    cloudTabDeviceName = v14->_cloudTabDeviceName;
    v14->_cloudTabDeviceName = disambiguatedName;

    objc_storeWeak(&v14->_device, deviceCopy);
    objc_storeStrong(&v14->_cloudTab, item);
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