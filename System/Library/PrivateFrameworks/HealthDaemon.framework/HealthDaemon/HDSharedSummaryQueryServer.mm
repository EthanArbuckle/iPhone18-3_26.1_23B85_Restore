@interface HDSharedSummaryQueryServer
- (HDSharedSummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDSharedSummaryQueryServer

- (HDSharedSummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = HDSharedSummaryQueryServer;
  v11 = [(HDQueryServer *)&v25 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    transaction = [configurationCopy transaction];
    v13 = [transaction copy];
    transaction = v11->_transaction;
    v11->_transaction = v13;

    package = [configurationCopy package];
    v16 = [package copy];
    package = v11->_package;
    v11->_package = v16;

    includedIdentifiers = [configurationCopy includedIdentifiers];
    v19 = [includedIdentifiers copy];
    includedIdentifiers = v11->_includedIdentifiers;
    v11->_includedIdentifiers = v19;

    includedObjectTypes = [configurationCopy includedObjectTypes];
    v22 = [includedObjectTypes copy];
    includedObjectTypes = v11->_includedObjectTypes;
    v11->_includedObjectTypes = v22;
  }

  return v11;
}

- (void)_queue_start
{
  v20.receiver = self;
  v20.super_class = HDSharedSummaryQueryServer;
  [(HDQueryServer *)&v20 _queue_start];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  profile = [(HDQueryServer *)self profile];
  sharedSummaryManager = [profile sharedSummaryManager];
  transaction = self->_transaction;
  package = self->_package;
  includedIdentifiers = self->_includedIdentifiers;
  includedObjectTypes = self->_includedObjectTypes;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __42__HDSharedSummaryQueryServer__queue_start__block_invoke;
  v17 = &unk_278628C30;
  v10 = v3;
  v18 = v10;
  LODWORD(package) = [sharedSummaryManager enumerateSummariesInTransaction:transaction package:package names:includedIdentifiers includedObjectTypes:includedObjectTypes error:&v19 handler:&v14];
  v11 = v19;

  v12 = [(HDQueryServer *)self clientProxy:v14];
  queryUUID = [(HDQueryServer *)self queryUUID];
  if (package)
  {
    [v12 client_deliverSummaries:v10 query:queryUUID];
  }

  else
  {
    [v12 client_deliverError:v11 forQuery:queryUUID];
  }

  -[HDQueryServer setDataCount:](self, "setDataCount:", [v10 count]);
}

@end