@interface BUZipFileWriter
+ (void)zipDirectoryAtURL:(id)a3 customDirectoryFilename:(id)a4 toURL:(id)a5 queue:(id)a6 progressHandler:(id)a7;
+ (void)zipDirectoryAtURL:(id)a3 toURL:(id)a4 queue:(id)a5 completion:(id)a6;
- (BUZipFileWriter)initWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BUZipFileWriter)initWithZipFileArchive:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)prepareWriteChannelWithCloseCompletionHandler:(id)a3;
- (void)copyEntriesFromZipFileWriter:(id)a3 readingFromURL:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)copyRemainingEntries:(id)a3 fromArchive:(id)a4 progress:(id)a5 completionHandler:(id)a6;
@end

@implementation BUZipFileWriter

- (BUZipFileWriter)initWithURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v23.receiver = self;
  v23.super_class = BUZipFileWriter;
  v9 = [(BUZipWriter *)&v23 initWithOptions:a4];
  if (v9)
  {
    objc_initWeak(&location, v9);
    v10 = [BUFileIOChannel alloc];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = sub_241DBAE48;
    v20 = &unk_278D1D540;
    objc_copyWeak(&v21, &location);
    v12 = objc_msgSend_initForRandomWritingURL_error_cleanupHandler_(v10, v11, v8, a5, &v17);
    writeChannel = v9->_writeChannel;
    v9->_writeChannel = v12;

    v15 = v9->_writeChannel;
    if (v15)
    {
      objc_msgSend_setLowWater_(v15, v14, -1, v17, v18, v19, v20);
    }

    else
    {

      v9 = 0;
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (BUZipFileWriter)initWithZipFileArchive:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v11 = objc_msgSend_URL(v8, v9, v10);
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_241DBB218;
  v49 = sub_241DBB228;
  v50 = 0;
  v44.receiver = self;
  v44.super_class = BUZipFileWriter;
  v12 = [(BUZipWriter *)&v44 initWithOptions:a4];
  if (!v12)
  {
    v13 = 0;
    if (!a5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_241DBB230;
  v42[3] = &unk_278D1D568;
  v13 = v12;
  v43 = v13;
  objc_msgSend_enumerateEntriesUsingBlock_(v8, v14, v42);
  Entry = objc_msgSend_endOfLastEntry(v8, v15, v16);
  objc_msgSend_setEntryInsertionOffset_(v13, v18, Entry);
  objc_initWeak(&location, v13);
  v19 = [BUFileIOChannel alloc];
  v20 = v46;
  obj = v46[5];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_241DBB238;
  v38[3] = &unk_278D1D540;
  objc_copyWeak(&v39, &location);
  v22 = objc_msgSend_initForRandomReadingWritingURL_error_cleanupHandler_(v19, v21, v11, &obj, v38);
  objc_storeStrong(v20 + 5, obj);
  writeChannel = v13->_writeChannel;
  v13->_writeChannel = v22;

  v25 = v13->_writeChannel;
  if (v25)
  {
    objc_msgSend_setLowWater_(v25, v24, -1);
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    v27 = v13->_writeChannel;
    v30 = objc_msgSend_endOfLastEntry(v8, v28, v29);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = sub_241DBB2BC;
    v35[3] = &unk_278D1D590;
    v37 = &v45;
    v31 = v26;
    v36 = v31;
    objc_msgSend_truncateToLength_completion_(v27, v32, v30, v35);
    dispatch_group_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v46[5])
  {

    v13 = 0;
  }

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);

  if (a5)
  {
LABEL_7:
    *a5 = v46[5];
  }

LABEL_8:
  v33 = v13;
  _Block_object_dispose(&v45, 8);

  return v33;
}

- (void)copyEntriesFromZipFileWriter:(id)a3 readingFromURL:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (objc_msgSend_isClosed(v10, v13, v14))
  {
    v15 = [BUZipFileArchive alloc];
    v45 = 0;
    v17 = objc_msgSend_initWithWriter_forReadingFromURL_options_error_(v15, v16, v10, v11, a5, &v45);
    v18 = v45;
    if (v17)
    {
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v19 = objc_alloc(MEMORY[0x277CBEB18]);
      v22 = objc_msgSend_entriesCount(v17, v20, v21);
      v24 = objc_msgSend_initWithCapacity_(v19, v23, v22);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_241DBB5A0;
      v38[3] = &unk_278D1D5B8;
      v25 = v24;
      v39 = v25;
      v40 = &v41;
      objc_msgSend_enumerateEntriesUsingBlock_(v17, v26, v38);
      objc_msgSend_sortUsingComparator_(v25, v27, &unk_2853F2C28);
      v29 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x277CCAC48], v28, v42[3]);
      objc_msgSend_copyRemainingEntries_fromArchive_progress_completionHandler_(self, v30, v25, v17, v29, v12);

      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v34 = MEMORY[0x245D00360](v12);
      v36 = v34;
      if (v34)
      {
        if (v18)
        {
          (*(v34 + 16))(v34, v18);
        }

        else
        {
          v37 = objc_msgSend_bu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v35, 0);
          (v36)[2](v36, v37);
        }
      }
    }
  }

  else
  {
    v32 = MEMORY[0x245D00360](v12);
    if (v32)
    {
      v33 = objc_msgSend_bu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v31, 0);
      (v32)[2](v32, v33);
    }
  }
}

- (void)copyRemainingEntries:(id)a3 fromArchive:(id)a4 progress:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17 = objc_msgSend_firstObject(v10, v14, v15);
  if (v17)
  {
    objc_msgSend_removeObjectAtIndex_(v10, v16, 0);
    v21 = objc_msgSend_streamReadChannelForEntry_(v11, v18, v17);
    if (v21)
    {
      v22 = objc_msgSend_name(v17, v19, v20);
      v25 = objc_msgSend_lastModificationDate(v17, v23, v24);
      v36 = objc_msgSend_size(v17, v26, v27);
      v35 = objc_msgSend_CRC(v17, v28, v29);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_241DBB888;
      v37[3] = &unk_278D1D600;
      v43 = v13;
      v38 = v12;
      v39 = v17;
      v40 = self;
      v41 = v10;
      v42 = v11;
      objc_msgSend_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_completion_(self, v30, v22, 0, v25, v36, v35, v21, v37);
    }

    else
    {
      v33 = MEMORY[0x245D00360](v13);
      if (v33)
      {
        v34 = objc_msgSend_bu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v32, 0);
        (v33)[2](v33, v34);
      }
    }
  }

  else
  {
    v31 = MEMORY[0x245D00360](v13);
    v21 = v31;
    if (v31)
    {
      (*(v31 + 16))(v31, 0);
    }
  }
}

- (id)prepareWriteChannelWithCloseCompletionHandler:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  writeChannelCompletionHandler = self->_writeChannelCompletionHandler;
  self->_writeChannelCompletionHandler = v4;

  writeChannel = self->_writeChannel;

  return writeChannel;
}

+ (void)zipDirectoryAtURL:(id)a3 toURL:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241DBBA88;
  v13[3] = &unk_278D1D628;
  v14 = v10;
  v11 = v10;
  objc_msgSend_zipDirectoryAtURL_customDirectoryFilename_toURL_queue_progressHandler_(a1, v12, a3, 0, a4, a5, v13);
}

+ (void)zipDirectoryAtURL:(id)a3 customDirectoryFilename:(id)a4 toURL:(id)a5 queue:(id)a6 progressHandler:(id)a7
{
  v140[2] = *MEMORY[0x277D85DE8];
  v95 = a3;
  v101 = a4;
  v11 = a5;
  queue = a6;
  v100 = a7;
  v12 = [BUZipFileWriter alloc];
  v137 = 0;
  v92 = v11;
  v102 = objc_msgSend_initWithURL_error_(v12, v13, v11, &v137);
  v14 = v137;
  v93 = v14;
  if (v102)
  {
    v17 = objc_msgSend_path(v95, v15, v16);
    v20 = v17;
    if (!v101)
    {
      v21 = objc_msgSend_stringByDeletingLastPathComponent(v17, v18, v19);

      v20 = v21;
    }

    v22 = objc_msgSend_stringByStandardizingPath(v20, v18, v19);
    v91 = objc_msgSend_precomposedStringWithCanonicalMapping(v22, v23, v24);

    v99 = objc_msgSend_length(v91, v25, v26);
    v29 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v27, v28);
    v30 = *MEMORY[0x277CBE868];
    v31 = *MEMORY[0x277CBE838];
    v140[0] = *MEMORY[0x277CBE868];
    v140[1] = v31;
    v103 = v31;
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, v140, 2);
    v35 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v29, v34, v95, v33, 0, 0);

    v133[0] = 0;
    v133[1] = v133;
    v133[2] = 0x2020000000;
    v133[3] = 0;
    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v37 = v35;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v129, v139, 16);
    if (v40)
    {
      v104 = 0;
      v41 = *v130;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v130 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v129 + 1) + 8 * i);
          v128 = 0;
          ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v43, v39, &v128, v30, 0);
          v45 = v128;
          v48 = v45;
          if (ResourceValue_forKey_error && (objc_msgSend_BOOLValue(v45, v46, v47) & 1) == 0)
          {
            v127 = 0;
            v50 = objc_msgSend_getResourceValue_forKey_error_(v43, v49, &v127, v103, 0);
            v51 = v127;
            v54 = v51;
            if (v50)
            {
              v104 += objc_msgSend_unsignedLongLongValue(v51, v52, v53);
            }

            objc_msgSend_addObject_(v36, v52, v43);
          }
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v39, &v129, v139, 16);
      }

      while (v40);
    }

    else
    {
      v104 = 0;
    }

    v121 = 0;
    v122 = &v121;
    v123 = 0x3032000000;
    v124 = sub_241DBB218;
    v125 = sub_241DBB228;
    v126 = 0;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = v36;
    v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v117, v138, 16);
    if (v60)
    {
      v98 = *v118;
      v97 = *MEMORY[0x277CBE7B0];
      while (2)
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v118 != v98)
          {
            objc_enumerationMutation(obj);
          }

          v62 = *(*(&v117 + 1) + 8 * j);
          v63 = objc_msgSend_path(v62, v58, v59);
          v66 = objc_msgSend_stringByStandardizingPath(v63, v64, v65);
          v69 = objc_msgSend_precomposedStringWithCanonicalMapping(v66, v67, v68);

          v72 = objc_msgSend_substringFromIndex_(v69, v70, v99 + 1);
          if (v101)
          {
            v73 = objc_msgSend_stringByAppendingPathComponent_(v101, v71, v72);

            v72 = v73;
          }

          v74 = [BUFileIOChannel alloc];
          v75 = (v122 + 5);
          v116 = v122[5];
          v77 = objc_msgSend_initForReadingURL_error_(v74, v76, v62, &v116);
          objc_storeStrong(v75, v116);
          if (!v77)
          {

            goto LABEL_35;
          }

          v115 = 0;
          v79 = objc_msgSend_getResourceValue_forKey_error_(v62, v78, &v115, v103, 0);
          v80 = v115;
          v82 = v80;
          if ((v79 & 1) == 0)
          {

            v82 = 0;
          }

          v114 = 0;
          v83 = objc_msgSend_getResourceValue_forKey_error_(v62, v81, &v114, v97, 0);
          v84 = v114;
          v87 = v84;
          if ((v83 & 1) == 0)
          {

            v87 = 0;
          }

          v88 = objc_msgSend_unsignedLongLongValue(v82, v85, v86);
          v109[0] = MEMORY[0x277D85DD0];
          v109[1] = 3221225472;
          v109[2] = sub_241DBC2A8;
          v109[3] = &unk_278D1D650;
          v111 = v133;
          v110 = v100;
          v112 = &v121;
          v113 = v104;
          objc_msgSend_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_writeHandler_(v102, v89, v72, 0, v87, v88, 0, v77, v109);
        }

        v60 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v117, v138, 16);
        if (v60)
        {
          continue;
        }

        break;
      }
    }

LABEL_35:

    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = sub_241DBC398;
    v105[3] = &unk_278D1D678;
    v106 = v100;
    v107 = &v121;
    v108 = v104;
    objc_msgSend_closeWithQueue_completion_(v102, v90, queue, v105);

    _Block_object_dispose(&v121, 8);
    _Block_object_dispose(v133, 8);

    v56 = v91;
  }

  else
  {
    v55 = v14;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241DBC264;
    block[3] = &unk_278D1CEA0;
    v136 = v100;
    v135 = v55;
    dispatch_async(queue, block);

    v56 = v136;
  }
}

@end