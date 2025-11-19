@interface CHInputContextLexiconManager
- (CHInputContextLexiconManager)init;
- (NSArray)addressBookLexicon;
- (NSDictionary)textReplacements;
- (_LXLexicon)transientLexiconWithCustomEntries:(id)a3;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation CHInputContextLexiconManager

- (CHInputContextLexiconManager)init
{
  v112 = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = CHInputContextLexiconManager;
  v2 = [(CHInputContextLexiconManager *)&v88 init];
  v3 = v2;
  if (v2)
  {
    contactsObserverBlock = v2->_contactsObserverBlock;
    v2->_contactsObserverBlock = 0;

    namedEntityObserverBlock = v3->_namedEntityObserverBlock;
    v3->_namedEntityObserverBlock = 0;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    attr = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_UNSPECIFIED, 0);

    v7 = dispatch_queue_create("com.apple.handwritingd.LexiconManagerQueue", attr);
    lexiconQueue = v3->_lexiconQueue;
    v3->_lexiconQueue = v7;

    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"handwritingd-transient-lexicon-%p", v10, v11, v12, v3);
    v14 = *MEMORY[0x1E69ABFF8];
    v108 = *MEMORY[0x1E69ABFF8];
    v109 = v13;
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, &v109, &v108, 1, v16);
    Transient = LXLexiconCreateTransient();
    mCFObject = v3->_transientLexicon.mCFObject;
    v3->_transientLexicon.mCFObject = Transient;
    if (mCFObject)
    {
      CFRelease(mCFObject);
    }

    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"handwritingd-transient-lexicon-with_custom_entries-%p", v19, v20, v21, v3);
    v106 = v14;
    v107 = v24;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, &v107, &v106, 1, v26);
    v28 = LXLexiconCreateTransient();
    v29 = v3->_transientLexiconWithCustomEntries.mCFObject;
    v3->_transientLexiconWithCustomEntries.mCFObject = v28;
    if (v29)
    {
      CFRelease(v29);
    }

    lastCustomLexiconEntries = v3->_lastCustomLexiconEntries;
    v3->_lastCustomLexiconEntries = 0;

    v35 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, @"handwritingd-transient-phrase-lexicon-%p", v32, v33, v34, v3);
    v104 = v14;
    v105 = v35;
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v36, &v105, &v104, 1, v37);
    v39 = LXLexiconCreateTransient();
    v40 = v3->_transientPhraseLexicon.mCFObject;
    v3->_transientPhraseLexicon.mCFObject = v39;
    if (v40)
    {
      CFRelease(v40);
    }

    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    textReplacements = v3->_textReplacements;
    v3->_textReplacements = v41;

    v94 = 0;
    v95 = &v94;
    v96 = 0x2050000000;
    v43 = qword_1EA84CF00;
    v97 = qword_1EA84CF00;
    if (qword_1EA84CF00)
    {
      goto LABEL_15;
    }

    location = MEMORY[0x1E69E9820];
    p_location = 3221225472;
    v91 = sub_18378BEDC;
    v92 = &unk_1E6DDCCD0;
    v93 = &v94;
    v98 = 0;
    if (!qword_1EA84CF08)
    {
      v99 = MEMORY[0x1E69E9820];
      v100 = 3221225472;
      v101 = sub_18378C030;
      v102 = &unk_1E6DDC0E0;
      v103 = &v98;
      v110 = xmmword_1E6DDDF38;
      v111 = 0;
      qword_1EA84CF08 = _sl_dlopen();
      if (!qword_1EA84CF08)
      {
        goto LABEL_36;
      }

      if (v98)
      {
        free(v98);
      }
    }

    Class = objc_getClass("_KSTextReplacementClientStore");
    *(v93[1] + 24) = Class;
    if (*(v93[1] + 24))
    {
      qword_1EA84CF00 = *(v93[1] + 24);
      v43 = v95[3];
LABEL_15:
      v45 = v43;
      _Block_object_dispose(&v94, 8);
      v46 = objc_alloc_init(v43);
      textReplacementStore = v3->_textReplacementStore;
      v3->_textReplacementStore = v46;

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      location = 0;
      p_location = &location;
      v91 = 0x2020000000;
      v49 = qword_1EA84CF10;
      v92 = qword_1EA84CF10;
      if (!qword_1EA84CF10)
      {
        v99 = MEMORY[0x1E69E9820];
        v100 = 3221225472;
        v101 = sub_18378C0A4;
        v102 = &unk_1E6DDCCD0;
        v103 = &location;
        sub_18378C0A4(&v99);
        v49 = *(p_location + 24);
      }

      _Block_object_dispose(&location, 8);
      if (v49)
      {
        v50 = *v49;
        v51 = *v49;
        CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_1837895D4, v50, 0, 0);
        sub_1837895DC(v3);
        v52 = LMVocabularyCreate();
        v53 = v3->_vocabulary.mCFObject;
        v3->_vocabulary.mCFObject = v52;
        if (v53)
        {
          CFRelease(v53);
        }

        v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
        addressBook = v3->_addressBook;
        v3->_addressBook = v54;

        if (!v3->_contactsObserverBlock)
        {
          objc_initWeak(&location, v3);
          v99 = MEMORY[0x1E69E9820];
          v100 = 3221225472;
          v101 = sub_18378A1DC;
          v102 = &unk_1E6DDDE50;
          objc_copyWeak(&v103, &location);
          v56 = MEMORY[0x1865E6810](&v99);
          v57 = v3->_contactsObserverBlock;
          v3->_contactsObserverBlock = v56;

          objc_destroyWeak(&v103);
          objc_destroyWeak(&location);
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v58 = qword_1EA84DC70;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(location) = 0;
          _os_log_impl(&dword_18366B000, v58, OS_LOG_TYPE_DEBUG, "Adding contact update observer", &location, 2u);
        }

        v59 = sub_18378A48C();
        v65 = objc_msgSend_sharedManager(v59, v60, v61, v62, v63, v64);
        v70 = objc_msgSend_addContactObserver_(v65, v66, v3->_contactsObserverBlock, v67, v68, v69);

        if (!v3->_namedEntityObserverBlock)
        {
          objc_initWeak(&location, v3);
          v99 = MEMORY[0x1E69E9820];
          v100 = 3221225472;
          v101 = sub_18378AAD0;
          v102 = &unk_1E6DDD098;
          objc_copyWeak(&v103, &location);
          v71 = MEMORY[0x1865E6810](&v99);
          v72 = v3->_namedEntityObserverBlock;
          v3->_namedEntityObserverBlock = v71;

          objc_destroyWeak(&v103);
          objc_destroyWeak(&location);
        }

        if (qword_1EA84DC48 == -1)
        {
          v73 = qword_1EA84DC70;
          if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
LABEL_31:

            v74 = sub_18378A48C();
            v80 = objc_msgSend_sharedManager(v74, v75, v76, v77, v78, v79);
            v85 = objc_msgSend_addNamedEntitiesUpdateObserver_(v80, v81, v3->_namedEntityObserverBlock, v82, v83, v84);

            return v3;
          }
        }

        else
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v73 = qword_1EA84DC70;
          if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_31;
          }
        }

        LOWORD(location) = 0;
        _os_log_impl(&dword_18366B000, v73, OS_LOG_TYPE_DEBUG, "Adding named entity lexicon update observer", &location, 2u);
        goto LABEL_31;
      }

      dlerror();
      abort_report_np();
LABEL_37:
      __break(1u);
    }

LABEL_36:
    abort_report_np();
    goto LABEL_37;
  }

  return v3;
}

- (void)dealloc
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_183789814;
  v9[3] = &unk_1E6DDBE10;
  v9[4] = self;
  v3 = MEMORY[0x1865E6810](v9, a2);
  label = dispatch_queue_get_label(0);
  if (!strcmp(label, "com.apple.handwritingd.LexiconManagerQueue") || (lexiconQueue = self->_lexiconQueue) == 0)
  {
    v3[2](v3);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_183789A44;
    block[3] = &unk_1E6DDC908;
    v8 = v3;
    dispatch_sync(lexiconQueue, block);
  }

  v6.receiver = self;
  v6.super_class = CHInputContextLexiconManager;
  [(CHInputContextLexiconManager *)&v6 dealloc];
}

- (NSDictionary)textReplacements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_18378A03C;
  v10 = sub_18378A04C;
  v11 = 0;
  lexiconQueue = self->_lexiconQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18378A054;
  v5[3] = &unk_1E6DDC7F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lexiconQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)addressBookLexicon
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_18378A03C;
  v10 = sub_18378A04C;
  v11 = 0;
  lexiconQueue = self->_lexiconQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_18378A190;
  v5[3] = &unk_1E6DDC7F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lexiconQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (_LXLexicon)transientLexiconWithCustomEntries:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v39 = a3;
  if (self->_transientLexiconWithCustomEntries.mCFObject)
  {
    goto LABEL_11;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v9 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v9, OS_LOG_TYPE_ERROR, "Transient lexicon with custom entries must be non-nil", buf, 2u);
  }

  if (self->_transientLexiconWithCustomEntries.mCFObject)
  {
    goto LABEL_11;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v10 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
LABEL_9:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v10, OS_LOG_TYPE_FAULT, "Transient lexicon with custom entries must be non-nil", buf, 2u);
  }

LABEL_10:

LABEL_11:
  v11 = v39;
  if (!objc_msgSend_count(v39, v4, v5, v6, v7, v8))
  {
    mCFObject = self->_transientLexicon.mCFObject;
    goto LABEL_39;
  }

  if (objc_msgSend_isEqualToSet_(v39, v12, self->_lastCustomLexiconEntries, v13, v14, v15))
  {
    mCFObject = self->_transientLexiconWithCustomEntries.mCFObject;
    goto LABEL_39;
  }

  v22 = objc_msgSend_copy(v39, v16, v17, v18, v19, v20);
  lastCustomLexiconEntries = self->_lastCustomLexiconEntries;
  self->_lastCustomLexiconEntries = v22;

  LXLexiconClear();
  RootCursor = LXLexiconCreateRootCursor();
  v50 = self;
  *buf = RootCursor;
  v46 = MEMORY[0x1E69E9820];
  v47 = 3221225472;
  v48 = sub_18378AA20;
  v49 = &unk_1E6DDDE78;
  LXCursorEnumerateEntriesRecursively();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v39;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v42, v52, 16, v27);
  if (!v28)
  {
    goto LABEL_36;
  }

  v29 = *v43;
  do
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v43 != v29)
      {
        objc_enumerationMutation(v25);
      }

      v31 = *(*(&v42 + 1) + 8 * i);
      v32 = v31;
      if (v31)
      {
        CFRetain(v31);
        cf = v32;
        v33 = CFGetTypeID(v32);
        if (v33 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1865E5C80](exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      else
      {
        cf = 0;
      }

      if (LXLexiconAdd())
      {
        LXLexiconIncrementUsageCount();
        LXLexiconSetUserBitfield();
        goto LABEL_31;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v36 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

LABEL_29:
        *v40 = 0;
        _os_log_impl(&dword_18366B000, v36, OS_LOG_TYPE_ERROR, "A token ID should be assigned when adding to the lexicon. Skipping lexicon entry.", v40, 2u);
        goto LABEL_30;
      }

      v36 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

LABEL_30:

LABEL_31:
      if (cf)
      {
        CFRelease(cf);
      }
    }

    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v34, &v42, v52, 16, v35);
  }

  while (v28);
LABEL_36:

  mCFObject = self->_transientLexiconWithCustomEntries.mCFObject;
  if (RootCursor)
  {
    CFRelease(RootCursor);
  }

  v11 = v39;
LABEL_39:

  return mCFObject;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  return self;
}

@end