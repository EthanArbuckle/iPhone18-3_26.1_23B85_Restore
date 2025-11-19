@interface CKAutoupdatingDateFormatter
- (CKAutoupdatingDateFormatter)initWithTemplate:(id)a3;
- (void)dealloc;
- (void)updateDateFormat;
@end

@implementation CKAutoupdatingDateFormatter

- (void)dealloc
{
  v3 = [(CKAutoupdatingDateFormatter *)self notificationCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKAutoupdatingDateFormatter;
  [(CKAutoupdatingDateFormatter *)&v4 dealloc];
}

- (CKAutoupdatingDateFormatter)initWithTemplate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CKAutoupdatingDateFormatter;
  v5 = [(CKAutoupdatingDateFormatter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(CKAutoupdatingDateFormatter *)v5 setTemplate:v4];
    v7 = [MEMORY[0x1E695DF58] __ck_currentLocale];
    [(CKAutoupdatingDateFormatter *)v6 setLocale:v7];

    v8 = [(CKAutoupdatingDateFormatter *)v6 notificationCenter];
    [v8 addObserver:v6 selector:sel_updateDateFormat name:*MEMORY[0x1E695D8F0] object:0];

    [(CKAutoupdatingDateFormatter *)v6 updateDateFormat];
  }

  return v6;
}

- (void)updateDateFormat
{
  v3 = MEMORY[0x1E696AB78];
  v4 = [(CKAutoupdatingDateFormatter *)self template];
  v5 = [(CKAutoupdatingDateFormatter *)self locale];
  v6 = [v3 dateFormatFromTemplate:v4 options:0 locale:v5];

  [(CKAutoupdatingDateFormatter *)self setDateFormat:v6];
}

@end