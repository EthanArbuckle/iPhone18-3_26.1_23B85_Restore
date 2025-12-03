@interface CLSHolidayDetectedScenes
- (CLSHolidayDetectedScenes)init;
- (void)recordDetectedSceneImportance:(unint64_t)importance;
@end

@implementation CLSHolidayDetectedScenes

- (void)recordDetectedSceneImportance:(unint64_t)importance
{
  if (importance - 1 <= 3)
  {
    ++*(&self->super.isa + importance);
  }
}

- (CLSHolidayDetectedScenes)init
{
  v3.receiver = self;
  v3.super_class = CLSHolidayDetectedScenes;
  result = [(CLSHolidayDetectedScenes *)&v3 init];
  if (result)
  {
    *&result->_detectedSceneImportantCount = 0u;
    *&result->_detectedSceneEdgeCaseCount = 0u;
  }

  return result;
}

@end