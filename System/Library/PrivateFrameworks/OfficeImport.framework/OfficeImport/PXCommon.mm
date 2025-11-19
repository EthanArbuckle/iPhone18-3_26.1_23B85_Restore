@interface PXCommon
+ (void)initialize;
@end

@implementation PXCommon

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [[CXNamespace alloc] initWithUri:"urn:schemas-microsoft-com:office:powerpoint"];
    v3 = PXVmlNamespace;
    PXVmlNamespace = v2;

    v4 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/mac/powerpoint/2008/main"];
    v5 = PXMacPowerPointNamespace;
    PXMacPowerPointNamespace = v4;

    v6 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/powerpoint/2010/main"];
    v7 = PXPowerPoint2010Namespace;
    PXPowerPoint2010Namespace = v6;

    v8 = [[CXNamespace alloc] initWithUri:"http://schemas.microsoft.com/office/powerpoint/2012/main"];
    v9 = PXPowerPoint2012Namespace;
    PXPowerPoint2012Namespace = v8;

    v10 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/presentationml/2006/main"];
    v11 = PXMainNamespace;
    PXMainNamespace = v10;

    v12 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/officeDocument/2006/relationships"];
    v13 = PXRelationshipNamespace;
    PXRelationshipNamespace = v12;

    v14 = [[CXNamespace alloc] initWithUri:"http://schemas.openxmlformats.org/drawingml/2006/main"];
    v15 = PXOfficeArtNamespace;
    PXOfficeArtNamespace = v14;
  }
}

@end