@interface OCDReader
- (OCDReader)initWithCancelDelegate:(id)delegate;
- (OCDReaderDelegate)delegate;
- (void)setStartErrorMessageFromException:(id)exception;
@end

@implementation OCDReader

- (OCDReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OCDReader)initWithCancelDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = OCDReader;
  v5 = [(OCDReader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(OCDReader *)v5 setCancelDelegate:delegateCopy];
  }

  return v6;
}

- (void)setStartErrorMessageFromException:(id)exception
{
  v4 = [TCMessageException nsError:exception domain:@"com.apple.iWork.compatibility.officeImport"];
  [(OCDReader *)self setStartError:?];
}

@end