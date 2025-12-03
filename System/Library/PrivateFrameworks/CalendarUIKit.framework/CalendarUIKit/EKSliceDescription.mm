@interface EKSliceDescription
+ (id)sliceDescriptionForSlicingEvent:(id)event;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setOriginalEventToSliceOn:(id)on;
@end

@implementation EKSliceDescription

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  originalMainSeriesDetails = [(EKSliceDescription *)self originalMainSeriesDetails];
  masterEvent = [originalMainSeriesDetails masterEvent];
  localUID = [masterEvent localUID];
  originalMainSeriesDetails2 = [(EKSliceDescription *)self originalMainSeriesDetails];
  masterEvent2 = [originalMainSeriesDetails2 masterEvent];
  title = [masterEvent2 title];
  v12 = [v3 stringWithFormat:@"%@ <%p> :: Original master - localUID: %@, title: %@", v5, self, localUID, title];

  return v12;
}

- (void)setOriginalEventToSliceOn:(id)on
{
  v4 = [on copy];
  originalEventToSliceOn = self->_originalEventToSliceOn;
  self->_originalEventToSliceOn = v4;

  MEMORY[0x1EEE66BB8](v4, originalEventToSliceOn);
}

+ (id)sliceDescriptionForSlicingEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setOriginalEventToSliceOn:eventCopy];
  v5 = [[EKSeriesDetails alloc] initWithEvent:eventCopy];

  [v4 setOriginalMainSeriesDetails:v5];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  originalEventToSliceOn = [(EKSliceDescription *)self originalEventToSliceOn];
  [v4 setOriginalEventToSliceOn:originalEventToSliceOn];

  originalMainSeriesDetails = [(EKSliceDescription *)self originalMainSeriesDetails];
  [v4 setOriginalMainSeriesDetails:originalMainSeriesDetails];

  return v4;
}

@end