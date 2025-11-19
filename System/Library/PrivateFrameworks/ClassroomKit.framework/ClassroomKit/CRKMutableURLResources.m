@interface CRKMutableURLResources
- (void)setDirectory:(id)a3;
- (void)setDocumentIdentifier:(id)a3;
- (void)setLastModificationDate:(id)a3;
- (void)setSize:(unint64_t)a3;
@end

@implementation CRKMutableURLResources

- (void)setDirectory:(id)a3
{
  v4 = a3;
  v5 = [(CRKURLResources *)self resources];
  [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x277CBE868]];
}

- (void)setDocumentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CRKURLResources *)self resources];
  [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x277CBE7C8]];
}

- (void)setLastModificationDate:(id)a3
{
  v4 = a3;
  v5 = [(CRKURLResources *)self resources];
  [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x277CBE7B0]];
}

- (void)setSize:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v4 = [(CRKURLResources *)self resources];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CBE838]];
}

@end