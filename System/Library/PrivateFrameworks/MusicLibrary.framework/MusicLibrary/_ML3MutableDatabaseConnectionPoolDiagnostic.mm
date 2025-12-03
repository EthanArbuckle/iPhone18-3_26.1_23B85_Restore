@interface _ML3MutableDatabaseConnectionPoolDiagnostic
- (void)setReaderAvailableConnections:(id)connections;
- (void)setReaderBusyConnections:(id)connections;
- (void)setWriterAvailableConnections:(id)connections;
- (void)setWriterBusyConnections:(id)connections;
@end

@implementation _ML3MutableDatabaseConnectionPoolDiagnostic

- (void)setWriterBusyConnections:(id)connections
{
  if (self->super._writerBusyConnections != connections)
  {
    v5 = [connections copy];
    writerBusyConnections = self->super._writerBusyConnections;
    self->super._writerBusyConnections = v5;

    MEMORY[0x2821F96F8](v5, writerBusyConnections);
  }
}

- (void)setWriterAvailableConnections:(id)connections
{
  if (self->super._writerAvailableConnections != connections)
  {
    v5 = [connections copy];
    writerAvailableConnections = self->super._writerAvailableConnections;
    self->super._writerAvailableConnections = v5;

    MEMORY[0x2821F96F8](v5, writerAvailableConnections);
  }
}

- (void)setReaderBusyConnections:(id)connections
{
  if (self->super._readerBusyConnections != connections)
  {
    v5 = [connections copy];
    readerBusyConnections = self->super._readerBusyConnections;
    self->super._readerBusyConnections = v5;

    MEMORY[0x2821F96F8](v5, readerBusyConnections);
  }
}

- (void)setReaderAvailableConnections:(id)connections
{
  if (self->super._readerAvailableConnections != connections)
  {
    v5 = [connections copy];
    readerAvailableConnections = self->super._readerAvailableConnections;
    self->super._readerAvailableConnections = v5;

    MEMORY[0x2821F96F8](v5, readerAvailableConnections);
  }
}

@end