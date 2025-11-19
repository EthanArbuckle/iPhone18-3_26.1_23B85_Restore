@interface CKVocabularySearchResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSearchResult:(id)a3;
- (CKVocabularySearchResult)init;
- (CKVocabularySearchResult)initWithCoder:(id)a3;
- (CKVocabularySearchResult)initWithVocabularyItem:(id)a3 originAppId:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKVocabularySearchResult

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(CKVocabularyItem *)self->_vocabularyItem copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_originAppId copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqualToSearchResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (vocabularyItem = self->_vocabularyItem, [v4 vocabularyItem], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(vocabularyItem) = -[CKVocabularyItem isEqual:](vocabularyItem, "isEqual:", v7), v7, vocabularyItem))
  {
    originAppId = self->_originAppId;
    v9 = [v5 originAppId];
    v10 = [(NSString *)originAppId isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVocabularySearchResult *)self isEqualToSearchResult:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  vocabularyItem = self->_vocabularyItem;
  v5 = a3;
  [v5 encodeObject:vocabularyItem forKey:@"item"];
  [v5 encodeObject:self->_originAppId forKey:@"appId"];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CKVocabularySearchResult;
  v3 = [(CKVocabularySearchResult *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" appId: %@, vocabularyItem: %@", self->_originAppId, self->_vocabularyItem];

  return v4;
}

- (CKVocabularySearchResult)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use -initWithItem:appId:" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVocabularySearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKVocabularySearchResult;
  v5 = [(CKVocabularySearchResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"item"];
    vocabularyItem = v5->_vocabularyItem;
    v5->_vocabularyItem = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appId"];
    originAppId = v5->_originAppId;
    v5->_originAppId = v8;
  }

  return v5;
}

- (CKVocabularySearchResult)initWithVocabularyItem:(id)a3 originAppId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CKVocabularySearchResult;
  v8 = [(CKVocabularySearchResult *)&v15 init];
  if (!v8 || (v9 = [v6 copy], vocabularyItem = v8->_vocabularyItem, v8->_vocabularyItem = v9, vocabularyItem, v8->_vocabularyItem) && (v11 = objc_msgSend(v7, "copy"), originAppId = v8->_originAppId, v8->_originAppId = v11, originAppId, v8->_originAppId))
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end