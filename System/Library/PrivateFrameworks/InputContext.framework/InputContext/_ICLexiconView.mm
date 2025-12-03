@interface _ICLexiconView
- (_ICLexiconView)initWithName:(id)name typeFlags:(unsigned __int8)flags;
- (void)dealloc;
@end

@implementation _ICLexiconView

- (void)dealloc
{
  CFRelease(self->_lexicon);
  v3.receiver = self;
  v3.super_class = _ICLexiconView;
  [(_ICLexiconView *)&v3 dealloc];
}

- (_ICLexiconView)initWithName:(id)name typeFlags:(unsigned __int8)flags
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = _ICLexiconView;
  v8 = [(_ICLexiconView *)&v14 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_name, name), v9->_typeFlags = flags, View = LXLexiconRepositoryCreateView(), (v9->_lexicon = View) == 0))
  {
    v12 = _ICPersNamedEntityOSLogFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_ICLexiconView initWithName:nameCopy typeFlags:v12];
    }

    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

- (void)initWithName:(uint64_t)a1 typeFlags:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_254BD0000, a2, OS_LOG_TYPE_ERROR, "Error creating lexicon view (name = %@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end