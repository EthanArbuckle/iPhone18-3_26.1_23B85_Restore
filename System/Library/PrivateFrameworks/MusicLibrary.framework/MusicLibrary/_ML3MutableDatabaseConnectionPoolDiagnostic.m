@interface _ML3MutableDatabaseConnectionPoolDiagnostic
- (void)setReaderAvailableConnections:(id)a3;
- (void)setReaderBusyConnections:(id)a3;
- (void)setWriterAvailableConnections:(id)a3;
- (void)setWriterBusyConnections:(id)a3;
@end

@implementation _ML3MutableDatabaseConnectionPoolDiagnostic

- (void)setWriterBusyConnections:(id)a3
{
  if (self->super._writerBusyConnections != a3)
  {
    v5 = [a3 copy];
    writerBusyConnections = self->super._writerBusyConnections;
    self->super._writerBusyConnections = v5;

    MEMORY[0x2821F96F8](v5, writerBusyConnections);
  }
}

- (void)setWriterAvailableConnections:(id)a3
{
  if (self->super._writerAvailableConnections != a3)
  {
    v5 = [a3 copy];
    writerAvailableConnections = self->super._writerAvailableConnections;
    self->super._writerAvailableConnections = v5;

    MEMORY[0x2821F96F8](v5, writerAvailableConnections);
  }
}

- (void)setReaderBusyConnections:(id)a3
{
  if (self->super._readerBusyConnections != a3)
  {
    v5 = [a3 copy];
    readerBusyConnections = self->super._readerBusyConnections;
    self->super._readerBusyConnections = v5;

    MEMORY[0x2821F96F8](v5, readerBusyConnections);
  }
}

- (void)setReaderAvailableConnections:(id)a3
{
  if (self->super._readerAvailableConnections != a3)
  {
    v5 = [a3 copy];
    readerAvailableConnections = self->super._readerAvailableConnections;
    self->super._readerAvailableConnections = v5;

    MEMORY[0x2821F96F8](v5, readerAvailableConnections);
  }
}

@end