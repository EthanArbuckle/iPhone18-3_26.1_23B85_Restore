@interface ML3ClientImportServiceSession
- (BOOL)begin;
- (BOOL)finish;
- (ML3ClientImportServiceSession)initWithLibrary:(id)a3 connection:(id)a4 configuration:(id)a5;
- (void)dealloc;
@end

@implementation ML3ClientImportServiceSession

- (BOOL)finish
{
  importSession = self->_importSession;
  v3 = ML3ImportSession::flush(importSession, 1);
  if (v3)
  {
    ML3ImportSession::_finishImport(importSession);
  }

  return v3;
}

- (BOOL)begin
{
  importSession = self->_importSession;
  v3 = [(ML3ClientImportSessionConfiguration *)self->_configuration operationCount];

  return ML3ImportSession::begin(importSession, v3, 0, 0);
}

- (void)dealloc
{
  importSession = self->_importSession;
  if (importSession)
  {
    (*(*importSession + 8))(importSession, a2);
    self->_importSession = 0;
  }

  v4.receiver = self;
  v4.super_class = ML3ClientImportServiceSession;
  [(ML3ClientImportServiceSession *)&v4 dealloc];
}

- (ML3ClientImportServiceSession)initWithLibrary:(id)a3 connection:(id)a4 configuration:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ML3ClientImportServiceSession *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_library, a3);
    objc_storeStrong(&v13->_databaseConnection, a4);
    v14 = [v11 copy];
    configuration = v13->_configuration;
    v13->_configuration = v14;

    operator new();
  }

  return 0;
}

@end