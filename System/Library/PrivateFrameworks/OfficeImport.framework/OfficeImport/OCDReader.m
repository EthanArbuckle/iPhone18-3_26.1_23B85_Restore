@interface OCDReader
- (OCDReader)initWithCancelDelegate:(id)a3;
- (OCDReaderDelegate)delegate;
- (void)setStartErrorMessageFromException:(id)a3;
@end

@implementation OCDReader

- (OCDReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OCDReader)initWithCancelDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OCDReader;
  v5 = [(OCDReader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(OCDReader *)v5 setCancelDelegate:v4];
  }

  return v6;
}

- (void)setStartErrorMessageFromException:(id)a3
{
  v4 = [TCMessageException nsError:a3 domain:@"com.apple.iWork.compatibility.officeImport"];
  [(OCDReader *)self setStartError:?];
}

@end