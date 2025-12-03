@interface CRKExpiredCourseAlertText
+ (id)new;
- (CRKExpiredCourseAlertText)init;
- (CRKExpiredCourseAlertText)initWithCourse:(id)course;
- (NSString)acknowledgeOptionTitle;
- (NSString)message;
- (NSString)title;
@end

@implementation CRKExpiredCourseAlertText

- (CRKExpiredCourseAlertText)initWithCourse:(id)course
{
  courseCopy = course;
  if (!courseCopy)
  {
    [(CRKExpiredCourseAlertText *)a2 initWithCourse:?];
  }

  v10.receiver = self;
  v10.super_class = CRKExpiredCourseAlertText;
  v7 = [(CRKExpiredCourseAlertText *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_course, course);
  }

  return v8;
}

- (NSString)title
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"“%@” has expired and will be removed" value:&stru_285643BE8 table:0];
  course = [(CRKExpiredCourseAlertText *)self course];
  courseName = [course courseName];
  v8 = [v3 stringWithFormat:v5, courseName];

  return v8;
}

- (NSString)acknowledgeOptionTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Remove" value:&stru_285643BE8 table:0];

  return v3;
}

- (NSString)message
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Classes that have not been joined for more than a year are automatically removed." value:&stru_285643BE8 table:0];

  return v3;
}

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKExpiredCourseAlertText.m" lineNumber:55 description:{@"%@ is unavailable for %@", v5, self}];

  return 0;
}

- (CRKExpiredCourseAlertText)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"CRKExpiredCourseAlertText.m" lineNumber:60 description:{@"%@ is unavailable for %@", v5, self}];

  return 0;
}

- (void)initWithCourse:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CRKExpiredCourseAlertText.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"course"}];
}

@end