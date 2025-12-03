@interface EKUndoSliceOutcome
- (EKUndoSliceOutcome)initWithOriginalPostSliceDescription:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initResliceFromOutcome:(id)outcome;
- (void)_markExistingSeriesMasterAsChangedFromMaster:(id)master;
@end

@implementation EKUndoSliceOutcome

- (EKUndoSliceOutcome)initWithOriginalPostSliceDescription:(id)description
{
  descriptionCopy = description;
  v19.receiver = self;
  v19.super_class = EKUndoSliceOutcome;
  v6 = [(EKUndoSliceOutcome *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalPostSliceDescription, description);
    originalMainSeriesDetails = [descriptionCopy originalMainSeriesDetails];
    v9 = [originalMainSeriesDetails copy];
    mainSeriesDetails = v7->_mainSeriesDetails;
    v7->_mainSeriesDetails = v9;

    createdSeriesDetails = [descriptionCopy createdSeriesDetails];

    if (createdSeriesDetails)
    {
      createdSeriesDetails2 = [descriptionCopy createdSeriesDetails];
      masterEvent = [createdSeriesDetails2 masterEvent];
      v14 = [masterEvent copy];
      masterToDelete = v7->_masterToDelete;
      v7->_masterToDelete = v14;
    }

    updatedMainSeriesDetails = [(EKPostSliceDescription *)v7->_originalPostSliceDescription updatedMainSeriesDetails];
    masterEvent2 = [updatedMainSeriesDetails masterEvent];
    [(EKUndoSliceOutcome *)v7 _markExistingSeriesMasterAsChangedFromMaster:masterEvent2];
  }

  return v7;
}

- (id)initResliceFromOutcome:(id)outcome
{
  outcomeCopy = outcome;
  v18.receiver = self;
  v18.super_class = EKUndoSliceOutcome;
  v5 = [(EKUndoSliceOutcome *)&v18 init];
  if (v5)
  {
    originalPostSliceDescription = [outcomeCopy originalPostSliceDescription];
    originalPostSliceDescription = v5->_originalPostSliceDescription;
    v5->_originalPostSliceDescription = originalPostSliceDescription;

    updatedMainSeriesDetails = [(EKPostSliceDescription *)v5->_originalPostSliceDescription updatedMainSeriesDetails];
    v9 = [updatedMainSeriesDetails copy];
    mainSeriesDetails = v5->_mainSeriesDetails;
    v5->_mainSeriesDetails = v9;

    createdSeriesDetails = [(EKPostSliceDescription *)v5->_originalPostSliceDescription createdSeriesDetails];
    v12 = [createdSeriesDetails copy];
    createdSeriesDetails = v5->_createdSeriesDetails;
    v5->_createdSeriesDetails = v12;

    masterEvent = [(EKSeriesDetails *)v5->_createdSeriesDetails masterEvent];
    [masterEvent markAsUndeleted];

    originalMainSeriesDetails = [(EKSliceDescription *)v5->_originalPostSliceDescription originalMainSeriesDetails];
    masterEvent2 = [originalMainSeriesDetails masterEvent];
    [(EKUndoSliceOutcome *)v5 _markExistingSeriesMasterAsChangedFromMaster:masterEvent2];
  }

  return v5;
}

- (void)_markExistingSeriesMasterAsChangedFromMaster:(id)master
{
  if (master)
  {
    mainSeriesDetails = self->_mainSeriesDetails;
    masterCopy = master;
    masterEvent = [(EKSeriesDetails *)mainSeriesDetails masterEvent];
    v7 = [masterCopy inverseObjectWithObject:masterEvent diff:0];

    [(EKSeriesDetails *)self->_mainSeriesDetails setMasterEvent:v7];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  originalPostSliceDescription = [(EKUndoSliceOutcome *)self originalPostSliceDescription];
  v6 = [v4 initWithOriginalPostSliceDescription:originalPostSliceDescription];

  masterToDelete = [(EKUndoSliceOutcome *)self masterToDelete];
  [v6 setMasterToDelete:masterToDelete];

  mainSeriesDetails = [(EKUndoSliceOutcome *)self mainSeriesDetails];
  [v6 setMainSeriesDetails:mainSeriesDetails];

  createdSeriesDetails = [(EKUndoSliceOutcome *)self createdSeriesDetails];
  [v6 setCreatedSeriesDetails:createdSeriesDetails];

  return v6;
}

@end