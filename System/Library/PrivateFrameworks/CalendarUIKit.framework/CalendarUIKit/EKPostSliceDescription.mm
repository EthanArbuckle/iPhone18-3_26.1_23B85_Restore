@interface EKPostSliceDescription
- (EKPostSliceDescription)initWithOriginalSliceDescription:(id)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EKPostSliceDescription

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = EKPostSliceDescription;
  v3 = [(EKSliceDescription *)&v16 description];
  updatedMainSeriesDetails = [(EKPostSliceDescription *)self updatedMainSeriesDetails];
  masterEvent = [updatedMainSeriesDetails masterEvent];
  title = [masterEvent title];
  createdSeriesDetails = [(EKPostSliceDescription *)self createdSeriesDetails];
  masterEvent2 = [createdSeriesDetails masterEvent];
  localUID = [masterEvent2 localUID];
  createdSeriesDetails2 = [(EKPostSliceDescription *)self createdSeriesDetails];
  masterEvent3 = [createdSeriesDetails2 masterEvent];
  title2 = [masterEvent3 title];
  v12 = [v14 stringWithFormat:@"%@ :: Modified series - title: %@ :: Created series - localUID: %@, title: %@", v3, title, localUID, title2];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = EKPostSliceDescription;
  v4 = [(EKSliceDescription *)&v8 copyWithZone:zone];
  updatedMainSeriesDetails = [(EKPostSliceDescription *)self updatedMainSeriesDetails];
  [v4 setUpdatedMainSeriesDetails:updatedMainSeriesDetails];

  createdSeriesDetails = [(EKPostSliceDescription *)self createdSeriesDetails];
  [v4 setCreatedSeriesDetails:createdSeriesDetails];

  return v4;
}

- (EKPostSliceDescription)initWithOriginalSliceDescription:(id)description
{
  descriptionCopy = description;
  v13.receiver = self;
  v13.super_class = EKPostSliceDescription;
  v5 = [(EKPostSliceDescription *)&v13 init];
  if (v5)
  {
    originalMainSeriesDetails = [descriptionCopy originalMainSeriesDetails];
    [(EKSliceDescription *)v5 setOriginalMainSeriesDetails:originalMainSeriesDetails];

    originalEventToSliceOn = [descriptionCopy originalEventToSliceOn];
    [(EKSliceDescription *)v5 setOriginalEventToSliceOn:originalEventToSliceOn];

    v8 = [EKSeriesDetails alloc];
    originalEventToSliceOn2 = [descriptionCopy originalEventToSliceOn];
    v10 = [(EKSeriesDetails *)v8 initWithEvent:originalEventToSliceOn2];
    updatedMainSeriesDetails = v5->_updatedMainSeriesDetails;
    v5->_updatedMainSeriesDetails = v10;
  }

  return v5;
}

@end