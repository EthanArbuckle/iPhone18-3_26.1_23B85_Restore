@interface CKVMatchingSpan
+ (id)_extractOntologyLabelFromGraph:(id)graph;
+ (id)matchingSpanFromSpanMatchResult:(id)result;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMatchingSpan:(id)span;
- (CKVMatchingSpan)init;
- (CKVMatchingSpan)initWithCoder:(id)coder;
- (CKVMatchingSpan)initWithOntologyGraph:(id)graph ontologyLabel:(id)label semanticValue:(id)value beginIndex:(unint64_t)index endIndex:(unint64_t)endIndex itemId:(id)id originAppId:(id)appId score:(float)self0 matchScore:(float)self1 priorInfo:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)ontologyGraphData:(id *)data;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKVMatchingSpan

- (unint64_t)hash
{
  v15 = [(NSString *)self->_ontologyLabel hash];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_beginIndex];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_endIndex];
  v6 = [v5 hash];
  v7 = [(NSString *)self->_itemId hash];
  v8 = [(NSString *)self->_originAppId hash];
  v9 = [(NSString *)self->_semanticValue hash];
  *&v10 = self->_score;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v12 = [v11 hash];
  v13 = v8 ^ v9 ^ v12 ^ [(CKVMatchingSpanMetadata *)self->_metadata hash];

  return v4 ^ v15 ^ v6 ^ v7 ^ v13;
}

- (id)ontologyGraphData:(id *)data
{
  v8 = *MEMORY[0x1E69E9840];
  [(USOGraph *)self->_ontologyGraph getCppGraph];
  siri::ontology::UsoGraphProtoWriter::toProtobuf();
  v3 = v6;
  PB::Writer::Writer(&v6);
  (*(*v3 + 24))(v3, &v6);
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:v6 - v7];
  PB::Writer::~Writer(&v6);
  (*(*v3 + 8))(v3);

  return v4;
}

- (BOOL)isEqualToMatchingSpan:(id)span
{
  spanCopy = span;
  v5 = spanCopy;
  if (spanCopy && (ontologyLabel = self->_ontologyLabel, [spanCopy ontologyLabel], v7 = objc_claimAutoreleasedReturnValue(), LOBYTE(ontologyLabel) = -[NSString isEqualToString:](ontologyLabel, "isEqualToString:", v7), v7, (ontologyLabel & 1) != 0) && (beginIndex = self->_beginIndex, beginIndex == objc_msgSend(v5, "beginIndex")) && (endIndex = self->_endIndex, endIndex == objc_msgSend(v5, "endIndex")) && (itemId = self->_itemId, objc_msgSend(v5, "itemId"), v11 = objc_claimAutoreleasedReturnValue(), LOBYTE(itemId) = -[NSString isEqualToString:](itemId, "isEqualToString:", v11), v11, (itemId & 1) != 0) && (originAppId = self->_originAppId, objc_msgSend(v5, "originAppId"), v13 = objc_claimAutoreleasedReturnValue(), LOBYTE(originAppId) = -[NSString isEqualToString:](originAppId, "isEqualToString:", v13), v13, (originAppId & 1) != 0) && (semanticValue = self->_semanticValue, objc_msgSend(v5, "semanticValue"), v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(semanticValue) = -[NSString isEqualToString:](semanticValue, "isEqualToString:", v15), v15, (semanticValue & 1) != 0) && (score = self->_score, objc_msgSend(v5, "score"), score == v17))
  {
    metadata = self->_metadata;
    metadata = [v5 metadata];
    v18 = [(CKVMatchingSpanMetadata *)metadata isEqual:metadata];
  }

  else
  {
    v18 = 0;
  }

  return v18;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVMatchingSpan *)self isEqualToMatchingSpan:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  objc_storeStrong((v5 + 16), self->_ontologyGraph);
  v6 = [(NSString *)self->_ontologyLabel copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 40) = self->_beginIndex;
  *(v5 + 48) = self->_endIndex;
  v8 = [(NSString *)self->_itemId copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_originAppId copyWithZone:zone];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_semanticValue copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  *(v5 + 8) = self->_score;
  v14 = [(CKVMatchingSpanMetadata *)self->_metadata copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  return v5;
}

- (CKVMatchingSpan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CKVMatchingSpan;
  v5 = [(CKVMatchingSpan *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ontologyGraph"];
    ontologyGraph = v5->_ontologyGraph;
    v5->_ontologyGraph = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ontologyLabel"];
    ontologyLabel = v5->_ontologyLabel;
    v5->_ontologyLabel = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"b"];
    v5->_beginIndex = [v10 unsignedLongValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"e"];
    v5->_endIndex = [v11 unsignedLongValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemId"];
    itemId = v5->_itemId;
    v5->_itemId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appId"];
    originAppId = v5->_originAppId;
    v5->_originAppId = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"semanticValue"];
    semanticValue = v5->_semanticValue;
    v5->_semanticValue = v16;

    [coderCopy decodeFloatForKey:@"score"];
    v5->_score = v18;
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_ontologyGraph forKey:@"ontologyGraph"];
  [coderCopy encodeObject:self->_ontologyLabel forKey:@"ontologyLabel"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_beginIndex];
  [coderCopy encodeObject:v4 forKey:@"b"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:self->_endIndex];
  [coderCopy encodeObject:v5 forKey:@"e"];

  [coderCopy encodeObject:self->_itemId forKey:@"itemId"];
  [coderCopy encodeObject:self->_originAppId forKey:@"appId"];
  [coderCopy encodeObject:self->_semanticValue forKey:@"semanticValue"];
  *&v6 = self->_score;
  [coderCopy encodeFloat:@"score" forKey:v6];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = CKVMatchingSpan;
  v3 = [(CKVMatchingSpan *)&v9 description];
  ontologyLabel = self->_ontologyLabel;
  originAppId = self->_originAppId;
  v6 = [(CKVMatchingSpanMetadata *)self->_metadata description];
  v7 = [v3 stringByAppendingFormat:@" ontologyLabel: %@, originAppId: %@, metadata: %@", ontologyLabel, originAppId, v6];

  return v7;
}

- (CKVMatchingSpan)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use internal initializer" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVMatchingSpan)initWithOntologyGraph:(id)graph ontologyLabel:(id)label semanticValue:(id)value beginIndex:(unint64_t)index endIndex:(unint64_t)endIndex itemId:(id)id originAppId:(id)appId score:(float)self0 matchScore:(float)self1 priorInfo:(id)self2
{
  v51 = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  labelCopy = label;
  valueCopy = value;
  idCopy = id;
  appIdCopy = appId;
  infoCopy = info;
  v46.receiver = self;
  v46.super_class = CKVMatchingSpan;
  v23 = [(CKVMatchingSpan *)&v46 init];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v23->_ontologyGraph, graph);
  if (!v24->_ontologyGraph)
  {
    v32 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v48 = "[CKVMatchingSpan initWithOntologyGraph:ontologyLabel:semanticValue:beginIndex:endIndex:itemId:originAppId:score:matchScore:priorInfo:]";
      v33 = "%s nil ontologyGraph";
      v34 = v32;
      v35 = 12;
LABEL_20:
      _os_log_error_impl(&dword_1C8683000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  objc_storeStrong(&v24->_ontologyLabel, label);
  if (![(NSString *)v24->_ontologyLabel length:graphCopy])
  {
    v36 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    ontologyLabel = v24->_ontologyLabel;
    *buf = 136315394;
    v48 = "[CKVMatchingSpan initWithOntologyGraph:ontologyLabel:semanticValue:beginIndex:endIndex:itemId:originAppId:score:matchScore:priorInfo:]";
    v49 = 2112;
    v50 = ontologyLabel;
    v33 = "%s invalid ontologyLabel: %@";
LABEL_19:
    v34 = v36;
    v35 = 22;
    goto LABEL_20;
  }

  objc_storeStrong(&v24->_semanticValue, value);
  if (![(NSString *)v24->_semanticValue length])
  {
    v36 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    semanticValue = v24->_semanticValue;
    *buf = 136315394;
    v48 = "[CKVMatchingSpan initWithOntologyGraph:ontologyLabel:semanticValue:beginIndex:endIndex:itemId:originAppId:score:matchScore:priorInfo:]";
    v49 = 2112;
    v50 = semanticValue;
    v33 = "%s invalid semanticValue: %@";
    goto LABEL_19;
  }

  v24->_beginIndex = index;
  v24->_endIndex = endIndex;
  v25 = [idCopy copy];
  itemId = v24->_itemId;
  v24->_itemId = v25;

  if (![(NSString *)v24->_itemId length])
  {
    v36 = CKLogContextVocabulary;
    if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v39 = v24->_itemId;
    *buf = 136315394;
    v48 = "[CKVMatchingSpan initWithOntologyGraph:ontologyLabel:semanticValue:beginIndex:endIndex:itemId:originAppId:score:matchScore:priorInfo:]";
    v49 = 2112;
    v50 = v39;
    v33 = "%s invalid itemId: %@";
    goto LABEL_19;
  }

  objc_storeStrong(&v24->_originAppId, appId);
  if (![(NSString *)v24->_originAppId length])
  {
    v36 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      originAppId = v24->_originAppId;
      *buf = 136315394;
      v48 = "[CKVMatchingSpan initWithOntologyGraph:ontologyLabel:semanticValue:beginIndex:endIndex:itemId:originAppId:score:matchScore:priorInfo:]";
      v49 = 2112;
      v50 = originAppId;
      v33 = "%s invalid originAppId: %@";
      goto LABEL_19;
    }

LABEL_21:
    v31 = 0;
    goto LABEL_22;
  }

  v24->_score = score;
  v27 = [CKVMatchingSpanMetadata alloc];
  *&v28 = matchScore;
  v29 = [(CKVMatchingSpanMetadata *)v27 initWithMatchingSpanPriorInfo:infoCopy matchScore:v28];
  metadata = v24->_metadata;
  v24->_metadata = v29;

LABEL_8:
  v31 = v24;
LABEL_22:

  return v31;
}

+ (id)_extractOntologyLabelFromGraph:(id)graph
{
  graphCopy = graph;
  [graphCopy getCppRootNode];
  siri::ontology::UsoGraph::getSuccessors();
  v4 = __p;
  if (__dst != __p)
  {
    if ((*(**__p + 16))(*__p) != 2)
    {
      goto LABEL_36;
    }

    siri::ontology::UsoGraph::getSuccessors();
    v5 = v23.__r_.__value_.__l.__size_ - v23.__r_.__value_.__r.__words[0];
    v6 = v27;
    if (v27 - __p < v23.__r_.__value_.__l.__size_ - v23.__r_.__value_.__r.__words[0])
    {
      v7 = v5 >> 3;
      if (__p)
      {
        operator delete(__p);
        v6 = 0;
        __p = 0;
        __dst = 0;
        v27 = 0;
      }

      if (!(v7 >> 61))
      {
        v8 = v6 >> 2;
        if (v6 >> 2 <= v7)
        {
          v8 = v5 >> 3;
        }

        if (v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (!(v9 >> 61))
        {
          operator new();
        }
      }

      std::vector<std::reference_wrapper<siri::ontology::UsoGraphNode>>::__throw_length_error[abi:ne200100]();
    }

    v10 = __dst;
    v11 = __dst - __p;
    if (__dst - __p >= v5)
    {
      if (v23.__r_.__value_.__l.__size_ != v23.__r_.__value_.__r.__words[0])
      {
        memmove(__p, v23.__r_.__value_.__l.__data_, v5);
      }

      v13 = __p + v5;
    }

    else
    {
      v12 = (v23.__r_.__value_.__r.__words[0] + v11);
      if (__dst != __p)
      {
        memmove(__p, v23.__r_.__value_.__l.__data_, v11);
        v10 = __dst;
      }

      if (v23.__r_.__value_.__l.__size_ != v12)
      {
        memmove(v10, v12, v23.__r_.__value_.__l.__size_ - v12);
      }

      v13 = &v10[v23.__r_.__value_.__l.__size_ - v12];
    }

    __dst = v13;
    if (v23.__r_.__value_.__r.__words[0])
    {
      v23.__r_.__value_.__l.__size_ = v23.__r_.__value_.__r.__words[0];
      operator delete(v23.__r_.__value_.__l.__data_);
      v13 = __dst;
    }

    v4 = __p;
    if (v13 != __p)
    {
      if ((*(**__p + 16))(*__p) == 3)
      {
        v14 = *__p;
        siri::ontology::UsoEntityNode::getEntitySpans(&v23, *__p);
        v15 = *&v23.__r_.__value_.__l.__data_;
        if (v23.__r_.__value_.__r.__words[0])
        {
          v23.__r_.__value_.__l.__size_ = v23.__r_.__value_.__r.__words[0];
          operator delete(v15);
        }

        if (*(&v15 + 1) != v15)
        {
          siri::ontology::UsoEntityNode::getEntitySpans(&v21, v14);
          v16 = v21;
          v17 = *v21;
          v23.__r_.__value_.__s.__data_[0] = 0;
          v24 = 0;
          if (*(v17 + 64) == 1)
          {
            if (*(v17 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&v23, *(v17 + 40), *(v17 + 48));
              v16 = v21;
              v24 = 1;
              if (!v21)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v23 = *(v17 + 40);
              v24 = 1;
            }

            v22 = v16;
            operator delete(v16);
LABEL_44:
            if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v20 = &v23;
            }

            else
            {
              v20 = v23.__r_.__value_.__r.__words[0];
            }

            v18 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
            if ((v24 & 1) != 0 && SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v23.__r_.__value_.__l.__data_);
            }

LABEL_37:
            v4 = __p;
            if (!__p)
            {
              goto LABEL_39;
            }

            goto LABEL_38;
          }

          v22 = v21;
          operator delete(v21);
        }
      }

LABEL_36:
      v18 = 0;
      goto LABEL_37;
    }
  }

  v18 = 0;
  if (v4)
  {
LABEL_38:
    __dst = v4;
    operator delete(v4);
  }

LABEL_39:

  return v18;
}

+ (id)matchingSpanFromSpanMatchResult:(id)result
{
  v37 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v30 = 0;
  v4 = [resultCopy toOntologyGraph:&v30];
  v5 = v30;
  if (v4)
  {
    v28 = [objc_opt_class() _extractOntologyLabelFromGraph:v4];
    spanInfo = [resultCopy spanInfo];
    spanRange = [spanInfo spanRange];
    v9 = v8;

    entityInfo = [resultCopy entityInfo];
    if ([entityInfo entityType] == 1)
    {
      v29 = v5;
      v11 = [entityInfo toKVItem:&v29];
      v27 = v29;

      if (v11)
      {
        v12 = objc_alloc(objc_opt_class());
        spanValue = [resultCopy spanValue];
        itemId = [v11 itemId];
        sourceIdentifierOrConstant = [entityInfo sourceIdentifierOrConstant];
        [resultCopy score];
        v16 = v15;
        spanInfo2 = [resultCopy spanInfo];
        [spanInfo2 matchScore];
        LODWORD(v19) = v18;
        LODWORD(v20) = v16;
        v21 = [v12 initWithOntologyGraph:v4 ontologyLabel:v28 semanticValue:spanValue beginIndex:spanRange endIndex:spanRange + v9 itemId:itemId originAppId:v20 score:v19 matchScore:sourceIdentifierOrConstant priorInfo:0];
      }

      else
      {
        v24 = CKLogContextVocabulary;
        if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v32 = "+[CKVMatchingSpan matchingSpanFromSpanMatchResult:]";
          v33 = 2112;
          v34 = resultCopy;
          v35 = 2112;
          v36 = v27;
          _os_log_error_impl(&dword_1C8683000, v24, OS_LOG_TYPE_ERROR, "%s Failed to resolve item from result: %@ error: %@", buf, 0x20u);
        }

        v21 = 0;
      }

      v5 = v27;
    }

    else
    {
      v23 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v32 = "+[CKVMatchingSpan matchingSpanFromSpanMatchResult:]";
        v33 = 2112;
        v34 = resultCopy;
        _os_log_error_impl(&dword_1C8683000, v23, OS_LOG_TYPE_ERROR, "%s Unsupported entityInfo for result: %@", buf, 0x16u);
      }

      v21 = 0;
    }
  }

  else
  {
    v22 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "+[CKVMatchingSpan matchingSpanFromSpanMatchResult:]";
      v33 = 2112;
      v34 = v5;
      _os_log_error_impl(&dword_1C8683000, v22, OS_LOG_TYPE_ERROR, "%s Omitting result: %@", buf, 0x16u);
    }

    v21 = 0;
  }

  return v21;
}

@end