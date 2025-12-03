@interface CRKMutableURLResources
- (void)setDirectory:(id)directory;
- (void)setDocumentIdentifier:(id)identifier;
- (void)setLastModificationDate:(id)date;
- (void)setSize:(unint64_t)size;
@end

@implementation CRKMutableURLResources

- (void)setDirectory:(id)directory
{
  directoryCopy = directory;
  resources = [(CRKURLResources *)self resources];
  [resources setObject:directoryCopy forKeyedSubscript:*MEMORY[0x277CBE868]];
}

- (void)setDocumentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  resources = [(CRKURLResources *)self resources];
  [resources setObject:identifierCopy forKeyedSubscript:*MEMORY[0x277CBE7C8]];
}

- (void)setLastModificationDate:(id)date
{
  dateCopy = date;
  resources = [(CRKURLResources *)self resources];
  [resources setObject:dateCopy forKeyedSubscript:*MEMORY[0x277CBE7B0]];
}

- (void)setSize:(unint64_t)size
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:size];
  resources = [(CRKURLResources *)self resources];
  [resources setObject:v5 forKeyedSubscript:*MEMORY[0x277CBE838]];
}

@end