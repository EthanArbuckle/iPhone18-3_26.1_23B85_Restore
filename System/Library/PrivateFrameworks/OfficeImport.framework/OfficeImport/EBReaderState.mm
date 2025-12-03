@interface EBReaderState
- (EBReaderState)initWithXlReader:(void *)reader cancelDelegate:(id)delegate;
- (id)columnWidthConvertor;
- (void)dealloc;
- (void)pauseReading;
- (void)readGlobalXlObjects;
- (void)reportWarning:(id)warning;
- (void)resumeReading;
@end

@implementation EBReaderState

- (void)readGlobalXlObjects
{
  if (self->mXlReader)
  {
    operator new();
  }
}

- (void)pauseReading
{
  v2 = +[ESDObjectFactory threadLocalFactory];
  [v2 restoreHostEshFactory];
}

- (void)resumeReading
{
  v3 = +[ESDObjectFactory threadLocalFactory];
  [v3 replaceHostEshFactoryWith:self->mXlEshObjectFactory];
}

- (id)columnWidthConvertor
{
  mColumnWidthConvertor = self->mColumnWidthConvertor;
  if (!mColumnWidthConvertor)
  {
    v4 = objc_alloc_init(ECColumnWidthConvertor);
    v5 = self->mColumnWidthConvertor;
    self->mColumnWidthConvertor = v4;

    v6 = self->mColumnWidthConvertor;
    styles = [(EDResources *)self->super.mResources styles];
    defaultWorkbookStyle = [styles defaultWorkbookStyle];
    font = [defaultWorkbookStyle font];
    [(ECColumnWidthConvertor *)v6 setupWithEDFont:font state:0];

    mColumnWidthConvertor = self->mColumnWidthConvertor;
  }

  return mColumnWidthConvertor;
}

- (void)dealloc
{
  mXlSheetInfoTable = self->mXlSheetInfoTable;
  if (mXlSheetInfoTable)
  {
    (*(*mXlSheetInfoTable + 8))(mXlSheetInfoTable, a2);
  }

  self->mXlSheetInfoTable = 0;
  mXlEshObjectFactory = self->mXlEshObjectFactory;
  if (mXlEshObjectFactory)
  {
    (*(mXlEshObjectFactory->var0 + 1))(mXlEshObjectFactory, a2);
  }

  self->mXlEshObjectFactory = 0;
  v5.receiver = self;
  v5.super_class = EBReaderState;
  [(EBState *)&v5 dealloc];
}

- (EBReaderState)initWithXlReader:(void *)reader cancelDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = EBReaderState;
  v7 = [(EBState *)&v9 initWithCancelDelegate:delegateCopy];
  if (v7)
  {
    v7->mXlReader = reader;
    v7->mXlSheetInfoTable = 0;
    operator new();
  }

  return 0;
}

- (void)reportWarning:(id)warning
{
  warningCopy = warning;
  warnings = [(EDWorkbook *)self->super.mWorkbook warnings];
  [warnings addWarning:warningCopy];
}

@end