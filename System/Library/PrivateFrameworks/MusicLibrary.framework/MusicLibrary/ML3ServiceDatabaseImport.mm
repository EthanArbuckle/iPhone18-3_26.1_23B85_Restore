@interface ML3ServiceDatabaseImport
- (ML3ServiceDatabaseImport)initWithDatabaseImport:(id)import library:(id)library writer:(id)writer client:(id)client;
@end

@implementation ML3ServiceDatabaseImport

- (ML3ServiceDatabaseImport)initWithDatabaseImport:(id)import library:(id)library writer:(id)writer client:(id)client
{
  importCopy = import;
  libraryCopy = library;
  writerCopy = writer;
  clientCopy = client;
  if (libraryCopy)
  {
    if (writerCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3ServiceDatabaseImport.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"writer"}];

    if (clientCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"ML3ServiceDatabaseImport.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"library"}];

  if (!writerCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (clientCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"ML3ServiceDatabaseImport.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"client"}];

LABEL_4:
  v15 = [importCopy _copyWithZone:0 usingConcreteClass:objc_opt_class()];

  if (v15)
  {
    objc_storeStrong(&v15->_library, library);
    objc_storeStrong(&v15->_writer, writer);
    objc_storeStrong(&v15->_client, client);
  }

  return v15;
}

@end