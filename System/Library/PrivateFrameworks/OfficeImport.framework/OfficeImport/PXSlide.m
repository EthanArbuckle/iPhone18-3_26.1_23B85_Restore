@interface PXSlide
+ (id)readFromPackagePart:(id)a3 presentationState:(id)a4;
@end

@implementation PXSlide

+ (id)readFromPackagePart:(id)a3 presentationState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PDSlide);
  v8 = [v6 OCXSlideLayoutRelationshipType];
  v9 = [v5 relationshipsByType:v8];

  v36 = v9;
  if ([v9 count] != 1)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v35 = [v9 objectAtIndex:0];
  v34 = [v35 targetLocation];
  v10 = [v6 modelObjectForLocation:v34];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [(PDSlide *)v7 setSlideLayout:v10];
  v11 = [v10 slideMaster];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 theme];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 baseStyles];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 styleMatrix];
        v18 = [v6 officeArtState];
        v19 = v18;
        if (v17 && v18)
        {
          [v18 setStyleMatrix:v17];
        }
      }
    }
  }

  [PXSlideChild readFromPackagePart:v5 toSlideChild:v7 presentationState:v6];
  v20 = [v6 OCXCommentsRelationshipType];
  v21 = [v5 relationshipsByType:v20];

  if ([v21 count])
  {
    if ([v21 count] != 1)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v22 = [v21 objectAtIndex:0];
    v23 = [v5 package];
    v24 = [v22 targetLocation];
    v25 = [v23 partForLocation:v24];

    [PXComment readComments:v25 slide:v7 state:v6];
    v26 = [v5 package];
    v27 = [v22 targetLocation];
    [v26 resetPartForLocation:v27];
  }

  v28 = [(PDSlide *)v7 transition];
  v29 = [v10 transition];
  [v28 setParent:v29];

  [v6 resetOfficeArtState];
  v30 = [v6 OCXNotesSlideRelationshipType];
  v31 = [v5 firstPartWithRelationshipOfType:v30];

  if (v31)
  {
    v32 = [PXNotesSlide readFromPackagePart:v31 presentationState:v6];
    [(PDSlide *)v7 setNotesSlide:v32];
    [v6 resetOfficeArtState];
  }

  return v7;
}

@end