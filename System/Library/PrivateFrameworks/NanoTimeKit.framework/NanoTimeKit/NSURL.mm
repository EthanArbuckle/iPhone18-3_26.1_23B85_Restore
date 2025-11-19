@interface NSURL
@end

@implementation NSURL

void __57__NSURL_ReplicationSupport___galleryLiteSupportDirectory__block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v9 = [v0 fileURLWithPath:v1];

  v2 = [v9 URLByAppendingPathComponent:@"Library"];
  v3 = [v2 URLByAppendingPathComponent:@"Caches"];
  v4 = [v3 URLByAppendingPathComponent:@"NanoTimeKit"];
  v5 = [v4 URLByAppendingPathComponent:@"GalleryLite"];
  v6 = _galleryLiteSupportDirectory_url;
  _galleryLiteSupportDirectory_url = v5;
  v7 = v5;

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  [v8 removeItemAtURL:v7 error:0];

  NTKMarkFileAtURLAsPurgeable(v7, 0);
}

@end