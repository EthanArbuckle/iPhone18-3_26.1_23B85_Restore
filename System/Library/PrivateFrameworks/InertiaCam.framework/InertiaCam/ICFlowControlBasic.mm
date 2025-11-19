@interface ICFlowControlBasic
- (BOOL)ICShouldBeCanceled;
- (ICFlowControlBasic)initWithCancel:(id)a3;
- (ICFlowControlBasic)initWithProgress:(id)a3;
- (void)ICReportProgress:(float)a3;
@end

@implementation ICFlowControlBasic

- (ICFlowControlBasic)initWithCancel:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICFlowControlBasic;
  v5 = [(ICFlowControlBasic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICFlowControlBasic *)v5 setShouldBeCanceled:v4];
  }

  return v6;
}

- (ICFlowControlBasic)initWithProgress:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICFlowControlBasic;
  v5 = [(ICFlowControlBasic *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICFlowControlBasic *)v5 setReportProgress:v4];
  }

  return v6;
}

- (void)ICReportProgress:(float)a3
{
  v5 = [(ICFlowControlBasic *)self reportProgress];

  if (v5)
  {
    v6 = [(ICFlowControlBasic *)self reportProgress];
    v6[2](a3);
  }
}

- (BOOL)ICShouldBeCanceled
{
  v3 = [(ICFlowControlBasic *)self shouldBeCanceled];

  if (v3)
  {
    v4 = [(ICFlowControlBasic *)self shouldBeCanceled];
    LOBYTE(v3) = v4[2]();
  }

  return v3;
}

@end