@interface PXSlide
+ (id)readFromPackagePart:(id)part presentationState:(id)state;
@end

@implementation PXSlide

+ (id)readFromPackagePart:(id)part presentationState:(id)state
{
  partCopy = part;
  stateCopy = state;
  v7 = objc_alloc_init(PDSlide);
  oCXSlideLayoutRelationshipType = [stateCopy OCXSlideLayoutRelationshipType];
  v9 = [partCopy relationshipsByType:oCXSlideLayoutRelationshipType];

  v36 = v9;
  if ([v9 count] != 1)
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  v35 = [v9 objectAtIndex:0];
  targetLocation = [v35 targetLocation];
  v10 = [stateCopy modelObjectForLocation:targetLocation];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [TCMessageException raise:TCInvalidFileFormatMessage];
  }

  [(PDSlide *)v7 setSlideLayout:v10];
  slideMaster = [v10 slideMaster];
  v12 = slideMaster;
  if (slideMaster)
  {
    theme = [slideMaster theme];
    v14 = theme;
    if (theme)
    {
      baseStyles = [theme baseStyles];
      v16 = baseStyles;
      if (baseStyles)
      {
        styleMatrix = [baseStyles styleMatrix];
        officeArtState = [stateCopy officeArtState];
        v19 = officeArtState;
        if (styleMatrix && officeArtState)
        {
          [officeArtState setStyleMatrix:styleMatrix];
        }
      }
    }
  }

  [PXSlideChild readFromPackagePart:partCopy toSlideChild:v7 presentationState:stateCopy];
  oCXCommentsRelationshipType = [stateCopy OCXCommentsRelationshipType];
  v21 = [partCopy relationshipsByType:oCXCommentsRelationshipType];

  if ([v21 count])
  {
    if ([v21 count] != 1)
    {
      [TCMessageException raise:TCInvalidFileFormatMessage];
    }

    v22 = [v21 objectAtIndex:0];
    package = [partCopy package];
    targetLocation2 = [v22 targetLocation];
    v25 = [package partForLocation:targetLocation2];

    [PXComment readComments:v25 slide:v7 state:stateCopy];
    package2 = [partCopy package];
    targetLocation3 = [v22 targetLocation];
    [package2 resetPartForLocation:targetLocation3];
  }

  transition = [(PDSlide *)v7 transition];
  transition2 = [v10 transition];
  [transition setParent:transition2];

  [stateCopy resetOfficeArtState];
  oCXNotesSlideRelationshipType = [stateCopy OCXNotesSlideRelationshipType];
  v31 = [partCopy firstPartWithRelationshipOfType:oCXNotesSlideRelationshipType];

  if (v31)
  {
    v32 = [PXNotesSlide readFromPackagePart:v31 presentationState:stateCopy];
    [(PDSlide *)v7 setNotesSlide:v32];
    [stateCopy resetOfficeArtState];
  }

  return v7;
}

@end