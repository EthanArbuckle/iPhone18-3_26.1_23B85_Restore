@interface HDReplaceObjectIdentifierOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDReplaceObjectIdentifierOperation)initWithCoder:(id)coder;
- (HDReplaceObjectIdentifierOperation)initWithWithObjectIdentifier:(id)identifier replacementIdentifier:(id)replacementIdentifier schemaIdentifier:(id)schemaIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDReplaceObjectIdentifierOperation

- (HDReplaceObjectIdentifierOperation)initWithWithObjectIdentifier:(id)identifier replacementIdentifier:(id)replacementIdentifier schemaIdentifier:(id)schemaIdentifier
{
  identifierCopy = identifier;
  replacementIdentifierCopy = replacementIdentifier;
  schemaIdentifierCopy = schemaIdentifier;
  v19.receiver = self;
  v19.super_class = HDReplaceObjectIdentifierOperation;
  v11 = [(HDReplaceObjectIdentifierOperation *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    objectIdentifier = v11->_objectIdentifier;
    v11->_objectIdentifier = v12;

    v14 = [replacementIdentifierCopy copy];
    replacementIdentifier = v11->_replacementIdentifier;
    v11->_replacementIdentifier = v14;

    v16 = [schemaIdentifierCopy copy];
    schemaIdentifier = v11->_schemaIdentifier;
    v11->_schemaIdentifier = v16;
  }

  return v11;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objectIdentifier = self->_objectIdentifier;
  schemaIdentifier = self->_schemaIdentifier;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __75__HDReplaceObjectIdentifierOperation_performWithProfile_transaction_error___block_invoke;
  v26[3] = &unk_27861B210;
  v11 = v8;
  v27 = v11;
  if ([HDAttachmentReferenceEntity enumerateReferencesForObjectIdentifier:objectIdentifier schemaIdentifier:schemaIdentifier transaction:transactionCopy error:error enumerationHandler:v26]&& [HDAttachmentReferenceEntity deleteReferences:v11 cloudStatus:0 transaction:transactionCopy error:error])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __75__HDReplaceObjectIdentifierOperation_performWithProfile_transaction_error___block_invoke_2;
    v25[3] = &unk_27862B960;
    v25[4] = self;
    [v11 hk_map:v25];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v24 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [HDAttachmentReferenceEntity _insertReference:*(*(&v21 + 1) + 8 * i) databaseTransaction:transactionCopy error:error, v21];

          if (!v17)
          {
            v18 = 0;
            goto LABEL_14;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v18 = 1;
LABEL_14:
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (HDReplaceObjectIdentifierOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"object_identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replacement_identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schema_identifier"];

  v8 = [(HDReplaceObjectIdentifierOperation *)self initWithWithObjectIdentifier:v5 replacementIdentifier:v6 schemaIdentifier:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDReplaceObjectIdentifierOperation;
  coderCopy = coder;
  [(HDJournalableOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_objectIdentifier forKey:{@"object_identifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_replacementIdentifier forKey:@"replacement_identifier"];
  [coderCopy encodeObject:self->_schemaIdentifier forKey:@"schema_identifier"];
}

@end