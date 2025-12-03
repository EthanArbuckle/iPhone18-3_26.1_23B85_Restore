@interface CHPersonalizedSynthesisModelStatus
+ (id)modelStatus;
- (CHPersonalizedSynthesisModelStatus)initWithCoder:(id)coder;
- (id).cxx_construct;
- (id)description;
- (id)getVersionForVariant:(int64_t)variant;
- (id)initFromStates:(id)states versions:(id)versions;
- (int64_t)getStateForVariant:(int64_t)variant;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHPersonalizedSynthesisModelStatus

- (id)initFromStates:(id)states versions:(id)versions
{
  statesCopy = states;
  versionsCopy = versions;
  v17.receiver = self;
  v17.super_class = CHPersonalizedSynthesisModelStatus;
  v8 = [(CHPersonalizedSynthesisModelStatus *)&v17 init];
  if (v8)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1836A4A10;
    v14[3] = &unk_1E6DDC298;
    v15 = versionsCopy;
    v16 = v8;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(statesCopy, v9, v14, v10, v11, v12);
  }

  return v8;
}

+ (id)modelStatus
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CHPersonalizedSynthesisModelStatus);
  if (v2)
  {
    v3 = objc_alloc_init(CHModelCatalog);
    v9 = objc_msgSend_assetDeliveryReady(v3, v4, v5, v6, v7, v8);
    CHHasHandwritingGenerationAllowed(v9, v10, v11, v12, v13, v14);
    operator new();
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v15 = qword_1EA84DC98;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = 0;
    _os_log_impl(&dword_18366B000, v15, OS_LOG_TYPE_DEBUG, "Queried model status: %@", &v17, 0xCu);
  }

  return v2;
}

- (int64_t)getStateForVariant:(int64_t)variant
{
  left = self->_modelStates.__tree_.__end_node_.__left_;
  p_end_node = &self->_modelStates.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    return 0;
  }

  v6 = p_end_node;
  do
  {
    if (v4[4].__left_ >= variant)
    {
      v6 = v4;
    }

    v4 = v4[v4[4].__left_ < variant].__left_;
  }

  while (v4);
  if (v6 != p_end_node && v6[4].__left_ <= variant)
  {
    return v6[5].__left_;
  }

  else
  {
    return 0;
  }
}

- (id)getVersionForVariant:(int64_t)variant
{
  left = self->_modelStates.__tree_.__end_node_.__left_;
  p_end_node = &self->_modelStates.__tree_.__end_node_;
  v5 = left;
  if (left)
  {
    v7 = p_end_node;
    do
    {
      if (v5[4].__left_ >= variant)
      {
        v7 = v5;
      }

      v5 = v5[v5[4].__left_ < variant].__left_;
    }

    while (v5);
    if (v7 == p_end_node || v7[4].__left_ > variant)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7[6].__left_;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v4, self->_modelStates.__tree_.__size_, v5, v6, v7);
  v17 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], v9, self->_modelStates.__tree_.__size_, v10, v11, v12);
  begin_node = self->_modelStates.__tree_.__begin_node_;
  p_end_node = &self->_modelStates.__tree_.__end_node_;
  if (begin_node != &self->_modelStates.__tree_.__end_node_)
  {
    do
    {
      v20 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v13, LODWORD(begin_node[4].__left_), v14, v15, v16);
      v25 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v21, LODWORD(begin_node[5].__left_), v22, v23, v24);
      v26 = begin_node[6].__left_;
      objc_msgSend_setObject_forKeyedSubscript_(v8, v27, v25, v20, v28, v29);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v30, v26, v20, v31, v32);

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v34 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v34 = begin_node[2].__left_;
          v35 = v34->__left_ == begin_node;
          begin_node = v34;
        }

        while (!v35);
      }

      begin_node = v34;
    }

    while (v34 != p_end_node);
  }

  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v8, @"modelStates", v15, v16);
  objc_msgSend_encodeObject_forKey_(coderCopy, v36, v17, @"modelVersions", v37, v38);
}

- (CHPersonalizedSynthesisModelStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v9 = objc_msgSend_decodeDictionaryWithKeysOfClass_objectsOfClass_forKey_(coderCopy, v7, v5, v6, @"modelStates", v8);
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v14 = objc_msgSend_decodeDictionaryWithKeysOfClass_objectsOfClass_forKey_(coderCopy, v12, v10, v11, @"modelVersions", v13);
  v18 = objc_msgSend_initFromStates_versions_(self, v15, v9, v14, v16, v17);

  return v18;
}

- (id)description
{
  v7 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  begin_node = self->_modelStates.__tree_.__begin_node_;
  if (begin_node != &self->_modelStates.__tree_.__end_node_)
  {
    do
    {
      isa = begin_node[1].super.isa;
      v10 = begin_node[1]._modelStates.__tree_.__begin_node_;
      v15 = begin_node[1]._modelStates.__tree_.__end_node_.__left_;
      if (isa >= 4)
      {
        v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Unknown variant %ld", v12, v13, v14, isa);
      }

      else
      {
        v16 = off_1E6DDC2B8[isa];
      }

      objc_msgSend_appendFormat_(v7, v11, @"%@=%ld (%@), ", v12, v13, v14, v16, v10, v15);

      v17 = begin_node->_modelStates.__tree_.__begin_node_;
      if (v17)
      {
        do
        {
          left = v17;
          v17 = v17->super.isa;
        }

        while (v17);
      }

      else
      {
        do
        {
          left = begin_node->_modelStates.__tree_.__end_node_.__left_;
          v19 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v19);
      }

      begin_node = left;
    }

    while (left != &self->_modelStates.__tree_.__end_node_);
  }

  return v7;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end