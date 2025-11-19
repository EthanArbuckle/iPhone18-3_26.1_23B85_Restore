@interface HDSharedSummaryQueryServer
- (HDSharedSummaryQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
@end

@implementation HDSharedSummaryQueryServer

- (HDSharedSummaryQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v25.receiver = self;
  v25.super_class = HDSharedSummaryQueryServer;
  v11 = [(HDQueryServer *)&v25 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [v10 transaction];
    v13 = [v12 copy];
    transaction = v11->_transaction;
    v11->_transaction = v13;

    v15 = [v10 package];
    v16 = [v15 copy];
    package = v11->_package;
    v11->_package = v16;

    v18 = [v10 includedIdentifiers];
    v19 = [v18 copy];
    includedIdentifiers = v11->_includedIdentifiers;
    v11->_includedIdentifiers = v19;

    v21 = [v10 includedObjectTypes];
    v22 = [v21 copy];
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
  v4 = [(HDQueryServer *)self profile];
  v5 = [v4 sharedSummaryManager];
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
  LODWORD(package) = [v5 enumerateSummariesInTransaction:transaction package:package names:includedIdentifiers includedObjectTypes:includedObjectTypes error:&v19 handler:&v14];
  v11 = v19;

  v12 = [(HDQueryServer *)self clientProxy:v14];
  v13 = [(HDQueryServer *)self queryUUID];
  if (package)
  {
    [v12 client_deliverSummaries:v10 query:v13];
  }

  else
  {
    [v12 client_deliverError:v11 forQuery:v13];
  }

  -[HDQueryServer setDataCount:](self, "setDataCount:", [v10 count]);
}

@end