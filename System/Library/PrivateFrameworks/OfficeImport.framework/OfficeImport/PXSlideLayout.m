@interface PXSlideLayout
+ (void)initialize;
+ (void)readFromPackagePart:(id)a3 toSlideLayout:(id)a4 presentationState:(id)a5;
@end

@implementation PXSlideLayout

+ (void)initialize
{
  {
    __cxa_atexit(__cxx_global_array_dtor_52, 0, &dword_25D297000);
  }
}

+ (void)readFromPackagePart:(id)a3 toSlideLayout:(id)a4 presentationState:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v15 xmlDocument];
  if (!v9)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v10 = OCXGetRootElement(v9);
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

    [v7 setSlideLayoutType:v13];
  }

  [v7 setShowMasterPlaceholderAnimations:{CXDefaultBoolAttribute(v10, CXNoNamespace, "showMasterPhAnim", 1)}];
  [v7 setShowMasterShapes:{CXDefaultBoolAttribute(v10, CXNoNamespace, "showMasterSp", 1)}];
  [PXSlideChild readFromPackagePart:v15 toSlideChild:v7 presentationState:v8];
  v14 = [v15 location];
  [v8 setModelObject:v7 forLocation:v14];
}

@end