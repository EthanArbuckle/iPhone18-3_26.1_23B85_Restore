@interface CKVocabularySearchResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSearchResult:(id)result;
- (CKVocabularySearchResult)init;
- (CKVocabularySearchResult)initWithCoder:(id)coder;
- (CKVocabularySearchResult)initWithVocabularyItem:(id)item originAppId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKVocabularySearchResult

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(CKVocabularyItem *)self->_vocabularyItem copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_originAppId copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqualToSearchResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (resultCopy && (vocabularyItem = self->_vocabularyItem, [resultCopy vocabularyItem], v7 = objc_claimAutoreleasedReturnValue(), LODWORD(vocabularyItem) = -[CKVocabularyItem isEqual:](vocabularyItem, "isEqual:", v7), v7, vocabularyItem))
  {
    originAppId = self->_originAppId;
    originAppId = [v5 originAppId];
    v10 = [(NSString *)originAppId isEqual:originAppId];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVocabularySearchResult *)self isEqualToSearchResult:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  vocabularyItem = self->_vocabularyItem;
  coderCopy = coder;
  [coderCopy encodeObject:vocabularyItem forKey:@"item"];
  [coderCopy encodeObject:self->_originAppId forKey:@"appId"];
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

- (CKVocabularySearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CKVocabularySearchResult;
  v5 = [(CKVocabularySearchResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"item"];
    vocabularyItem = v5->_vocabularyItem;
    v5->_vocabularyItem = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appId"];
    originAppId = v5->_originAppId;
    v5->_originAppId = v8;
  }

  return v5;
}

- (CKVocabularySearchResult)initWithVocabularyItem:(id)item originAppId:(id)id
{
  itemCopy = item;
  idCopy = id;
  v15.receiver = self;
  v15.super_class = CKVocabularySearchResult;
  v8 = [(CKVocabularySearchResult *)&v15 init];
  if (!v8 || (v9 = [itemCopy copy], vocabularyItem = v8->_vocabularyItem, v8->_vocabularyItem = v9, vocabularyItem, v8->_vocabularyItem) && (v11 = objc_msgSend(idCopy, "copy"), originAppId = v8->_originAppId, v8->_originAppId = v11, originAppId, v8->_originAppId))
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