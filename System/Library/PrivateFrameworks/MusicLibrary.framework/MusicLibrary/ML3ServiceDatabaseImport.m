@interface ML3ServiceDatabaseImport
- (ML3ServiceDatabaseImport)initWithDatabaseImport:(id)a3 library:(id)a4 writer:(id)a5 client:(id)a6;
@end

@implementation ML3ServiceDatabaseImport

- (ML3ServiceDatabaseImport)initWithDatabaseImport:(id)a3 library:(id)a4 writer:(id)a5 client:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ML3ServiceDatabaseImport.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"writer"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"ML3ServiceDatabaseImport.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"library"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"ML3ServiceDatabaseImport.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"client"}];

LABEL_4:
  v15 = [v11 _copyWithZone:0 usingConcreteClass:objc_opt_class()];

  if (v15)
  {
    objc_storeStrong(&v15->_library, a4);
    objc_storeStrong(&v15->_writer, a5);
    objc_storeStrong(&v15->_client, a6);
  }

  return v15;
}

@end