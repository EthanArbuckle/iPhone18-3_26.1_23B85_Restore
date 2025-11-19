@interface EKSliceDescription
+ (id)sliceDescriptionForSlicingEvent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setOriginalEventToSliceOn:(id)a3;
@end

@implementation EKSliceDescription

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(EKSliceDescription *)self originalMainSeriesDetails];
  v7 = [v6 masterEvent];
  v8 = [v7 localUID];
  v9 = [(EKSliceDescription *)self originalMainSeriesDetails];
  v10 = [v9 masterEvent];
  v11 = [v10 title];
  v12 = [v3 stringWithFormat:@"%@ <%p> :: Original master - localUID: %@, title: %@", v5, self, v8, v11];

  return v12;
}

- (void)setOriginalEventToSliceOn:(id)a3
{
  v4 = [a3 copy];
  originalEventToSliceOn = self->_originalEventToSliceOn;
  self->_originalEventToSliceOn = v4;

  MEMORY[0x1EEE66BB8](v4, originalEventToSliceOn);
}

+ (id)sliceDescriptionForSlicingEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setOriginalEventToSliceOn:v3];
  v5 = [[EKSeriesDetails alloc] initWithEvent:v3];

  [v4 setOriginalMainSeriesDetails:v5];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(EKSliceDescription *)self originalEventToSliceOn];
  [v4 setOriginalEventToSliceOn:v5];

  v6 = [(EKSliceDescription *)self originalMainSeriesDetails];
  [v4 setOriginalMainSeriesDetails:v6];

  return v4;
}

@end