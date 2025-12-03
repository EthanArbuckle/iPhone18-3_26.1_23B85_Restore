@interface PXSlideLayout
+ (void)initialize;
+ (void)readFromPackagePart:(id)part toSlideLayout:(id)layout presentationState:(id)state;
@end

@implementation PXSlideLayout

+ (void)initialize
{
  {
    __cxa_atexit(__cxx_global_array_dtor_52, 0, &dword_25D297000);
  }
}

+ (void)readFromPackagePart:(id)part toSlideLayout:(id)layout presentationState:(id)state
{
  partCopy = part;
  layoutCopy = layout;
  stateCopy = state;
  xmlDocument = [partCopy xmlDocument];
  if (!xmlDocument)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v10 = OCXGetRootElement(xmlDocument);
  if (!v10)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v11 = CXDefaultStringAttribute(v10, CXNoNamespace, "type", 0);
  if (v11)
  {
    v12 = [slideLayoutTypeEnumMap valueForString:v11];
    if (v12 == -130883970)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    [layoutCopy setSlideLayoutType:v13];
  }

  [layoutCopy setShowMasterPlaceholderAnimations:{CXDefaultBoolAttribute(v10, CXNoNamespace, "showMasterPhAnim", 1)}];
  [layoutCopy setShowMasterShapes:{CXDefaultBoolAttribute(v10, CXNoNamespace, "showMasterSp", 1)}];
  [PXSlideChild readFromPackagePart:partCopy toSlideChild:layoutCopy presentationState:stateCopy];
  location = [partCopy location];
  [stateCopy setModelObject:layoutCopy forLocation:location];
}

@end