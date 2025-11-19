@interface EKPostSliceDescription
- (EKPostSliceDescription)initWithOriginalSliceDescription:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EKPostSliceDescription

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = EKPostSliceDescription;
  v3 = [(EKSliceDescription *)&v16 description];
  v15 = [(EKPostSliceDescription *)self updatedMainSeriesDetails];
  v4 = [v15 masterEvent];
  v5 = [v4 title];
  v6 = [(EKPostSliceDescription *)self createdSeriesDetails];
  v7 = [v6 masterEvent];
  v8 = [v7 localUID];
  v9 = [(EKPostSliceDescription *)self createdSeriesDetails];
  v10 = [v9 masterEvent];
  v11 = [v10 title];
  v12 = [v14 stringWithFormat:@"%@ :: Modified series - title: %@ :: Created series - localUID: %@, title: %@", v3, v5, v8, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = EKPostSliceDescription;
  v4 = [(EKSliceDescription *)&v8 copyWithZone:a3];
  v5 = [(EKPostSliceDescription *)self updatedMainSeriesDetails];
  [v4 setUpdatedMainSeriesDetails:v5];

  v6 = [(EKPostSliceDescription *)self createdSeriesDetails];
  [v4 setCreatedSeriesDetails:v6];

  return v4;
}

- (EKPostSliceDescription)initWithOriginalSliceDescription:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EKPostSliceDescription;
  v5 = [(EKPostSliceDescription *)&v13 init];
  if (v5)
  {
    v6 = [v4 originalMainSeriesDetails];
    [(EKSliceDescription *)v5 setOriginalMainSeriesDetails:v6];

    v7 = [v4 originalEventToSliceOn];
    [(EKSliceDescription *)v5 setOriginalEventToSliceOn:v7];

    v8 = [EKSeriesDetails alloc];
    v9 = [v4 originalEventToSliceOn];
    v10 = [(EKSeriesDetails *)v8 initWithEvent:v9];
    updatedMainSeriesDetails = v5->_updatedMainSeriesDetails;
    v5->_updatedMainSeriesDetails = v10;
  }

  return v5;
}

@end