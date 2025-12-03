@interface CHRemoteSynthesisStringChunkingRequest
- (CHRemoteSynthesisStringChunkingRequest)initWithCoder:(id)coder;
- (CHRemoteSynthesisStringChunkingRequest)initWithString:(id)string allowedSynthesizers:(id)synthesizers mode:(id)mode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHRemoteSynthesisStringChunkingRequest

- (CHRemoteSynthesisStringChunkingRequest)initWithString:(id)string allowedSynthesizers:(id)synthesizers mode:(id)mode
{
  stringCopy = string;
  synthesizersCopy = synthesizers;
  modeCopy = mode;
  v27.receiver = self;
  v27.super_class = CHRemoteSynthesisStringChunkingRequest;
  v16 = [(CHRemoteSynthesisStringChunkingRequest *)&v27 init];
  if (v16)
  {
    v17 = objc_msgSend_copy(stringCopy, v11, v12, v13, v14, v15);
    string = v16->_string;
    v16->_string = v17;

    v24 = objc_msgSend_copy(synthesizersCopy, v19, v20, v21, v22, v23);
    allowedSynthesizers = v16->_allowedSynthesizers;
    v16->_allowedSynthesizers = v24;

    objc_storeStrong(&v16->_mode, mode);
  }

  return v16;
}

- (CHRemoteSynthesisStringChunkingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"string", v7, v8);
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v17 = objc_msgSend_setWithObjects_(v10, v13, v11, v14, v15, v16, v12, 0);
  v21 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v18, v17, @"allowedSynthesizers", v19, v20);
  v26 = objc_msgSend_decodeIntForKey_(coderCopy, v22, @"mode", v23, v24, v25);

  v31 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v27, v26, v28, v29, v30);
  v34 = objc_msgSend_initWithString_allowedSynthesizers_mode_(self, v32, v9, v21, v31, v33);

  return v34;
}

- (void)encodeWithCoder:(id)coder
{
  string = self->_string;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, string, @"string", v6, v7);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->_allowedSynthesizers, @"allowedSynthesizers", v9, v10);
  v16 = objc_msgSend_intValue(self->_mode, v11, v12, v13, v14, v15);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v17, v16, @"mode", v18, v19);
}

@end