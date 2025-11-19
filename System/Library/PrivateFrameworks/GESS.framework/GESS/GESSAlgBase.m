@interface GESSAlgBase
- (BOOL)run;
- (BOOL)setErrorCallback:(id)a3;
- (BOOL)setProgressCallback:(id)a3;
- (GESSAlgBase)init;
- (id)returnReport;
@end

@implementation GESSAlgBase

- (GESSAlgBase)init
{
  v7.receiver = self;
  v7.super_class = GESSAlgBase;
  v2 = [(GESSAlgBase *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setAlgStatus_(v2, v3, 0, v4);
  }

  return v5;
}

- (BOOL)setProgressCallback:(id)a3
{
  v4 = MEMORY[0x24C254FE0](a3, a2);
  progress_callback = self->_progress_callback;
  self->_progress_callback = v4;

  return 1;
}

- (BOOL)setErrorCallback:(id)a3
{
  v4 = MEMORY[0x24C254FE0](a3, a2);
  error_callback = self->_error_callback;
  self->_error_callback = v4;

  return 1;
}

- (id)returnReport
{
  v3 = objc_alloc_init(GESSAlgReport);
  if (objc_msgSend_algStatus(self, v4, v5, v6) == 3)
  {
    objc_msgSend_setSuccess_(v3, v7, 1, v8);
  }

  return v3;
}

- (BOOL)run
{
  objc_msgSend_setAlgStatus_(self, a2, 1, v2);
  NSLog(&cfstr_NeedToOverride.isa);
  objc_msgSend_setAlgStatus_(self, v4, 3, v5);
  return 1;
}

@end