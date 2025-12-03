@interface CDPCAEscrowReporter
- (CDPCAEscrowReporter)initWithPreRecordIdentifier:(id)identifier;
- (void)didAttemptEscrowPreRecord;
@end

@implementation CDPCAEscrowReporter

- (CDPCAEscrowReporter)initWithPreRecordIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = CDPCAEscrowReporter;
  v5 = [(CDPCAReporter *)&v8 initWithEvent:@"com.apple.CoreCDP.EscrowPreRecord"];
  v6 = v5;
  if (v5)
  {
    [(CDPCAReporter *)v5 setObject:identifierCopy forKeyedSubscript:@"preRecordIdentifier"];
  }

  return v6;
}

- (void)didAttemptEscrowPreRecord
{
  [(CDPCAReporter *)self setObject:@"didAttemptEscrowPreRecord" forKeyedSubscript:@"EscrowPreRecordResult"];

  [(CDPCAReporter *)self sendReport];
}

@end