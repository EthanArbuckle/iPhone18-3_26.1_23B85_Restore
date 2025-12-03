@interface CKAutoupdatingDateFormatter
- (CKAutoupdatingDateFormatter)initWithTemplate:(id)template;
- (void)dealloc;
- (void)updateDateFormat;
@end

@implementation CKAutoupdatingDateFormatter

- (void)dealloc
{
  notificationCenter = [(CKAutoupdatingDateFormatter *)self notificationCenter];
  [notificationCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKAutoupdatingDateFormatter;
  [(CKAutoupdatingDateFormatter *)&v4 dealloc];
}

- (CKAutoupdatingDateFormatter)initWithTemplate:(id)template
{
  templateCopy = template;
  v10.receiver = self;
  v10.super_class = CKAutoupdatingDateFormatter;
  v5 = [(CKAutoupdatingDateFormatter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(CKAutoupdatingDateFormatter *)v5 setTemplate:templateCopy];
    __ck_currentLocale = [MEMORY[0x1E695DF58] __ck_currentLocale];
    [(CKAutoupdatingDateFormatter *)v6 setLocale:__ck_currentLocale];

    notificationCenter = [(CKAutoupdatingDateFormatter *)v6 notificationCenter];
    [notificationCenter addObserver:v6 selector:sel_updateDateFormat name:*MEMORY[0x1E695D8F0] object:0];

    [(CKAutoupdatingDateFormatter *)v6 updateDateFormat];
  }

  return v6;
}

- (void)updateDateFormat
{
  v3 = MEMORY[0x1E696AB78];
  template = [(CKAutoupdatingDateFormatter *)self template];
  locale = [(CKAutoupdatingDateFormatter *)self locale];
  v6 = [v3 dateFormatFromTemplate:template options:0 locale:locale];

  [(CKAutoupdatingDateFormatter *)self setDateFormat:v6];
}

@end