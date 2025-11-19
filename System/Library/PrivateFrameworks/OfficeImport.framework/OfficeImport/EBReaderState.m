@interface EBReaderState
- (EBReaderState)initWithXlReader:(void *)a3 cancelDelegate:(id)a4;
- (id)columnWidthConvertor;
- (void)dealloc;
- (void)pauseReading;
- (void)readGlobalXlObjects;
- (void)reportWarning:(id)a3;
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
    v7 = [(EDResources *)self->super.mResources styles];
    v8 = [v7 defaultWorkbookStyle];
    v9 = [v8 font];
    [(ECColumnWidthConvertor *)v6 setupWithEDFont:v9 state:0];

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

- (EBReaderState)initWithXlReader:(void *)a3 cancelDelegate:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = EBReaderState;
  v7 = [(EBState *)&v9 initWithCancelDelegate:v6];
  if (v7)
  {
    v7->mXlReader = a3;
    v7->mXlSheetInfoTable = 0;
    operator new();
  }

  return 0;
}

- (void)reportWarning:(id)a3
{
  v5 = a3;
  v4 = [(EDWorkbook *)self->super.mWorkbook warnings];
  [v4 addWarning:v5];
}

@end