@interface CLSHolidayDetectedScenes
- (CLSHolidayDetectedScenes)init;
- (void)recordDetectedSceneImportance:(unint64_t)a3;
@end

@implementation CLSHolidayDetectedScenes

- (void)recordDetectedSceneImportance:(unint64_t)a3
{
  if (a3 - 1 <= 3)
  {
    ++*(&self->super.isa + a3);
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