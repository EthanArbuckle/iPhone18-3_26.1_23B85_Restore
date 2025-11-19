id OrgApacheLuceneIndexLeafReader_removeCoreClosedListenerAsReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneIndexLeafReader_CoreClosedListener_(void *a1, void *a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = [OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper alloc];
  JreStrongAssign(&v4->listener_, a2);
  v5 = v4;

  return [a1 removeReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:v5];
}

id sub_1000D545C(void *a1, void *a2, uint64_t a3)
{
  v6 = [a2 field];
  v7 = [a1 fields];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [v7 termsWithNSString:v6];
  if (!v8)
  {
    return 0;
  }

  v9 = [v8 iterator];
  if (!v9)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v10 = v9;
  if (![v9 seekExactWithOrgApacheLuceneUtilBytesRef:{objc_msgSend(a2, "bytes")}])
  {
    return 0;
  }

  return [v10 postingsWithOrgApacheLuceneIndexPostingsEnum:0 withInt:a3];
}

void *OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_init(uint64_t a1)
{
  v2 = new_OrgApacheLuceneUtilAttributeSource_init();

  return JreStrongAssignAndConsume((a1 + 24), v2);
}

uint64_t OrgApacheLuceneSearchTopTermsRewrite_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = OrgApacheLuceneSearchTermCollectingRewrite_init(a1, a2);
  *(a1 + 8) = v2;
  return result;
}

OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm *new_OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm_initWithOrgApacheLuceneIndexTermContext_(void *a1)
{
  v2 = [OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm alloc];
  v3 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  JreStrongAssignAndConsume(&v2->bytes_, v3);
  JreStrongAssign(&v2->termState_, a1);
  return v2;
}

void *sub_1000D6618(uint64_t a1, void *a2, int a3)
{
  JreStrongAssign((a1 + 80), a2);
  *(a1 + 88) = a3;
  OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_init(a1);
  v5 = *(a1 + 24);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [v5 addAttributeWithIOSClass:OrgApacheLuceneSearchMaxNonCompetitiveBoostAttribute_class_()];
  JreStrongAssign((a1 + 32), v6);
  v7 = new_JavaUtilHashMap_init();

  return JreStrongAssignAndConsume((a1 + 40), v7);
}

OrgApacheLuceneStoreAlreadyClosedException *new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(uint64_t a1)
{
  v2 = [OrgApacheLuceneStoreAlreadyClosedException alloc];
  JavaLangIllegalStateException_initWithNSString_(v2, a1);
  return v2;
}

OrgApacheLuceneUtilPackedBulkOperationPacked22 *new_OrgApacheLuceneUtilPackedBulkOperationPacked22_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked22 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 22);
  return v0;
}

uint64_t OrgApacheLuceneSearchBooleanWeight_initWithOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withBoolean_(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v9 = a1;
  OrgApacheLuceneSearchWeight_initWithOrgApacheLuceneSearchQuery_(a1, a2);
  JreStrongAssign((v9 + 24), a2);
  *(v9 + 45) = a4;
  if (!a3 || (JreStrongAssign((v9 + 16), [a3 getSimilarityWithBoolean:a4]), v10 = new_JavaUtilArrayList_init(), JreStrongAssignAndConsume((v9 + 32), v10), v34 = 0u, v35 = 0u, v36 = 0u, v37 = 0u, !a2))
  {
LABEL_33:
    JreThrowNullPointerException();
  }

  v32 = a5;
  v33 = a4;
  v11 = [a2 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = *v35;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(a2);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        if (!v17)
        {
          goto LABEL_33;
        }

        v18 = v9;
        v19 = [*(*(&v34 + 1) + 8 * i) getOccur];
        if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10002605C();
        }

        if (v19 == qword_100557BA8)
        {
          ++v14;
        }

        v20 = [v17 getQuery];
        if (v33)
        {
          v21 = [v17 isScoring];
        }

        else
        {
          v21 = 0;
        }

        v22 = [a3 createWeightWithOrgApacheLuceneSearchQuery:v20 withBoolean:v21];
        v9 = v18;
        [*(v18 + 32) addWithId:v22];
        v13 = v13 + [v17 isScoring];
      }

      v12 = [a2 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *(v9 + 56) = v14;
  *(v9 + 40) = v13;
  JreStrongAssignAndConsume((v9 + 48), [IOSFloatArray newArrayWithLength:v13 + 1]);
  JavaUtilArrays_fillWithFloatArray_withFloat_(*(v9 + 48), 1.0);
  v23 = *(v9 + 48);
  result = *(v23 + 8);
  if (result <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, 0);
  }

  *(v23 + 12) = 0;
  if (v13 < 1 || !v33 || (v32 & 1) != 0)
  {
    *(v9 + 44) = 1;
  }

  else
  {
    if (*(*(v9 + 48) + 8) < 2)
    {
      v31 = 1;
    }

    else
    {
      v25 = 0;
      v26 = 1;
      do
      {
        [v9 coordWithInt:v26 withInt:v13];
        v28 = *(v9 + 48);
        v29 = *(v28 + 8);
        if (v26 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, v26);
        }

        *(v28 + 12 + 4 * v26) = v27;
        v30 = *(v9 + 48);
        result = *(v30 + 8);
        if (v26 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v26);
        }

        v25 |= *(v30 + 12 + 4 * v26++) != 1.0;
      }

      while (v26 < result);
      v31 = v25 ^ 1;
    }

    *(v9 + 44) = v31 & 1;
  }

  return result;
}

OrgApacheLuceneSearchReqExclScorer *sub_1000D9FA4(void *a1, void **a2, void *a3)
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ([a3 isEmpty])
  {
    return a2;
  }

  if ([a3 size] == 1)
  {
    v7 = [a3 getWithInt:0];
  }

  else
  {
    v8 = +[IOSFloatArray arrayWithLength:](IOSFloatArray, "arrayWithLength:", ([a3 size] + 1));
    JavaUtilArrays_fillWithFloatArray_withFloat_(v8, 1.0);
    v7 = new_OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withFloatArray_withBoolean_(a1, a3, v8, 0);
  }

  v9 = new_OrgApacheLuceneSearchReqExclScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(a2, v7);

  return v9;
}

OrgApacheLuceneSearchBooleanWeight_$1 *sub_1000DA07C(uint64_t a1, void *a2, void *a3, char a4)
{
  if (!a2)
  {
    goto LABEL_19;
  }

  if ([a2 size] != 1)
  {
    LODWORD(v8) = 1.0;
    if ((a4 & 1) == 0)
    {
      if (!a3)
      {
        goto LABEL_19;
      }

      [a1 coordWithInt:objc_msgSend(a3 withInt:{"size", v8), *(a1 + 40)}];
    }

    v11 = new_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(a1, a2, a3, *&v8);
    goto LABEL_11;
  }

  v9 = [a2 getWithInt:0];
  if (!*(a1 + 45))
  {
    return v9;
  }

  if (!a3)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  if (![a3 isEmpty])
  {
    if (a4)
    {
      return v9;
    }

    [a1 coordWithInt:1 withInt:*(a1 + 40)];
    if (v13 == 1.0)
    {
      return v9;
    }

    v11 = new_OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer_initWithOrgApacheLuceneSearchScorer_withFloat_(v9, v13);
LABEL_11:
    v10 = v11;
    goto LABEL_12;
  }

  v10 = [OrgApacheLuceneSearchBooleanWeight__1 alloc];
  OrgApacheLuceneSearchFilterScorer_initWithOrgApacheLuceneSearchScorer_(v10, v9);
LABEL_12:

  return v10;
}

void **sub_1000DA1B0(uint64_t a1, void *a2, int a3, int a4)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if ([a2 size] == 1)
  {
    result = [a2 getWithInt:0];
    v9 = result;
    if ((a4 & 1) != 0 || *(a1 + 40) < 2)
    {
      return result;
    }

    [a1 coordWithInt:1 withInt:?];
    matched = new_OrgApacheLuceneSearchBooleanTopLevelScorers_BoostedScorer_initWithOrgApacheLuceneSearchScorer_withFloat_(v9, v10);
  }

  else
  {
    if (a4)
    {
      v12 = +[IOSFloatArray arrayWithLength:](IOSFloatArray, "arrayWithLength:", ([a2 size] + 1));
      JavaUtilArrays_fillWithFloatArray_withFloat_(v12, 1.0);
    }

    else
    {
      v12 = *(a1 + 48);
    }

    if (a3 < 2)
    {
      matched = new_OrgApacheLuceneSearchDisjunctionSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withFloatArray_withBoolean_(a1, a2, v12, *(a1 + 45));
    }

    else
    {
      matched = new_OrgApacheLuceneSearchMinShouldMatchSumScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilCollection_withInt_withFloatArray_(a1, a2, a3, v12);
    }
  }

  return matched;
}

OrgApacheLuceneSearchBooleanWeight *new_OrgApacheLuceneSearchBooleanWeight_initWithOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withBoolean_(void *a1, void *a2, uint64_t a3, char a4)
{
  v8 = [OrgApacheLuceneSearchBooleanWeight alloc];
  OrgApacheLuceneSearchBooleanWeight_initWithOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withBoolean_(v8, a1, a2, a3, a4);
  return v8;
}

OrgApacheLuceneUtilFstReverseBytesReader *new_OrgApacheLuceneUtilFstReverseBytesReader_initWithByteArray_(void *a1)
{
  v2 = [OrgApacheLuceneUtilFstReverseBytesReader alloc];
  OrgApacheLuceneUtilFstFST_BytesReader_init(v2, v3);
  JreStrongAssign(&v2->bytes_, a1);
  return v2;
}

void *OrgLukhnosPortmobileFileFiles_createDirectoriesWithOrgLukhnosPortmobileFilePath_(void *a1)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_10;
  }

  if ([v2 exists])
  {
    v3 = a1[1];
    if (v3)
    {
      if (([v3 isDirectory] & 1) == 0)
      {
        v11 = @"Path is not a directory: ";
        goto LABEL_12;
      }

      return a1;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  OrgLukhnosPortmobileFileFiles_createDirectoriesWithOrgLukhnosPortmobileFilePath_([a1 getParent]);
  v12 = [a1 toFile];
  if (!v12)
  {
    goto LABEL_10;
  }

  if (([v12 mkdir] & 1) == 0)
  {
    v11 = @"Failed creating directory: ";
LABEL_12:
    v14 = JreStrcat("$@", v4, v5, v6, v7, v8, v9, v10, v11);
    v15 = new_JavaIoIOException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  return a1;
}

id OrgLukhnosPortmobileFileFiles_newByteChannelWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnum_(void *a1, uint64_t a2)
{
  v5 = a2;
  v3 = [IOSObjectArray arrayWithObjects:&v5 count:1 type:OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()];
  return OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(a1, v3);
}

void *OrgLukhnosPortmobileFileFiles_createFileWithOrgLukhnosPortmobileFilePath_(void *a1)
{
  if (!a1 || (v2 = [a1 toFile]) == 0)
  {
    JreThrowNullPointerException();
  }

  if (([v2 createNewFile] & 1) == 0)
  {
    v11 = JreStrcat("$@", v3, v4, v5, v6, v7, v8, v9, @"File cannot be created: ");
    v12 = new_JavaIoIOException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  return a1;
}

id OrgLukhnosPortmobileFileFiles_sizeWithOrgLukhnosPortmobileFilePath_(void *a1)
{
  if (!a1 || (v1 = [a1 toFile]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v1 length];
}

id OrgLukhnosPortmobileFileFiles_existsWithOrgLukhnosPortmobileFilePath_(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v1 exists];
}

uint64_t OrgLukhnosPortmobileFileFiles_notExistsWithOrgLukhnosPortmobileFilePath_(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v1 exists] ^ 1;
}

id OrgLukhnosPortmobileFileFiles_isDirectoryWithOrgLukhnosPortmobileFilePath_(uint64_t a1)
{
  if (!a1 || (v1 = *(a1 + 8)) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v1 isDirectory];
}

JavaIoFileOutputStream *OrgLukhnosPortmobileFileFiles_newOutputStreamWithOrgLukhnosPortmobileFilePath_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v1 = new_JavaIoFileOutputStream_initWithJavaIoFile_([a1 toFile]);

  return v1;
}

JavaIoFileInputStream *OrgLukhnosPortmobileFileFiles_newInputStreamWithOrgLukhnosPortmobileFilePath_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v1 = new_JavaIoFileInputStream_initWithJavaIoFile_([a1 toFile]);

  return v1;
}

JavaIoBufferedReader *OrgLukhnosPortmobileFileFiles_newBufferedReaderWithOrgLukhnosPortmobileFilePath_withJavaNioCharsetCharset_(void *a1, void *a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = new_JavaIoFileInputStream_initWithJavaIoFile_([a1 toFile]);
  v4 = new_JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharset_(v3, a2);
  v5 = new_JavaIoBufferedReader_initWithJavaIoReader_(v4);

  return v5;
}

OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream *OrgLukhnosPortmobileFileFiles_newDirectoryStreamWithOrgLukhnosPortmobileFilePath_(void *a1)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_12;
  }

  if (([v2 isDirectory] & 1) == 0)
  {
    v18 = JreStrcat("$@", v3, v4, v5, v6, v7, v8, v9, @"Not a directory: ");
    v19 = new_JavaIoIOException_initWithNSString_(v18);
    objc_exception_throw(v19);
  }

  v10 = new_JavaUtilArrayList_init();
  v11 = [a1 toFile];
  if (!v11 || (v12 = [v11 listFiles]) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v13 = (v12 + 24);
  v14 = &v12[8 * *(v12 + 2) + 24];
  while (v13 < v14)
  {
    v15 = *v13++;
    [(JavaUtilArrayList *)v10 addWithId:new_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(v15)];
  }

  v16 = new_OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream_initWithJavaUtilList_(v10);

  return v16;
}

id OrgLukhnosPortmobileFileFiles_deleteIfExistsWithOrgLukhnosPortmobileFilePath_(void *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = [v2 exists];
  if (!v3)
  {
    return v3;
  }

  v4 = [a1 toFile];
  if (!v4)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  if (([v4 delete] & 1) == 0)
  {
    v13 = JreStrcat("$@", v5, v6, v7, v8, v9, v10, v11, @"Could not delete path: ");
    v14 = new_JavaIoIOException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  return v3;
}

OrgLukhnosPortmobileFilePath *OrgLukhnosPortmobileFileFiles_createTempFileWithOrgLukhnosPortmobileFilePath_withNSString_withNSString_(void *a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  TempFileWithNSString_withNSString_withJavaIoFile = JavaIoFile_createTempFileWithNSString_withNSString_withJavaIoFile_(a2, a3, [a1 toFile]);
  v4 = new_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(TempFileWithNSString_withNSString_withJavaIoFile);

  return v4;
}

void *OrgLukhnosPortmobileFileFiles_copy__WithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardCopyOptionArray_(void *a1, void *a2)
{
  if (!a1 || (v3 = a1[1]) == 0)
  {
    JreThrowNullPointerException();
  }

  if ([v3 isDirectory])
  {
    v12 = new_JavaLangUnsupportedOperationException_initWithNSString_(@"Directory copy not supported in this implementation");
    objc_exception_throw(v12);
  }

  v5 = OrgLukhnosPortmobileFileFiles_newInputStreamWithOrgLukhnosPortmobileFilePath_(a1);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaIoFileInputStream *)v5 getChannel];
  v7 = OrgLukhnosPortmobileFileFiles_newOutputStreamWithOrgLukhnosPortmobileFilePath_(a2);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaIoFileOutputStream *)v7 getChannel];
  if (!v6)
  {
    goto LABEL_14;
  }

  v9 = [v6 size];
  if (v9 < 1)
  {
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

    ;
  }

LABEL_11:
  [v6 close];
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  [v8 close];
  return a2;
}

id OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(void *a1)
{
  if (!a1 || (v1 = [a1 toFile]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v1 delete];
}

void *OrgLukhnosPortmobileFileFiles_moveWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardCopyOptionArray_(void *a1, void *a2)
{
  if (!a1 || (v3 = [a1 toFile]) == 0 || !a2)
  {
    JreThrowNullPointerException();
  }

  if (![v3 renameToWithJavaIoFile:{objc_msgSend(a2, "toFile")}])
  {
    v12 = JreStrcat("$@$@$", v4, v5, v6, v7, v8, v9, v10, @"Move from ");
    v13 = new_JavaIoIOException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  return a2;
}

void *OrgLukhnosPortmobileFileFiles_walkFileTreeWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileFileVisitor_(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_14;
  }

  if (![v3 isDirectory])
  {
    if (a2)
    {
      [a2 visitFileWithId:a1 withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:0];
      return a1;
    }

LABEL_14:
    JreThrowNullPointerException();
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  [a2 preVisitDirectoryWithId:a1 withOrgLukhnosPortmobileFileAttributeBasicFileAttributes:0];
  v5 = [a1 toFile];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = [v5 listFiles];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = (v6 + 24);
  v8 = &v6[8 * *(v6 + 2) + 24];
  while (v7 < v8)
  {
    v9 = *v7++;
    v10 = new_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(v9);
    OrgLukhnosPortmobileFileFiles_walkFileTreeWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileFileVisitor_(v10, a2);
  }

  [a2 postVisitDirectoryWithId:a1 withJavaIoIOException:0];
  return a1;
}

OrgLukhnosPortmobileFilePath *OrgLukhnosPortmobileFileFiles_createTempDirectoryWithNSString_(void *a1)
{
  TempFileWithNSString_withNSString = JavaIoFile_createTempFileWithNSString_withNSString_(a1, &stru_100484358);
  if (!TempFileWithNSString_withNSString)
  {
    JreThrowNullPointerException();
  }

  v2 = TempFileWithNSString_withNSString;
  [(JavaIoFile *)TempFileWithNSString_withNSString delete];
  [(JavaIoFile *)v2 mkdir];
  v3 = new_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(v2);

  return v3;
}

OrgLukhnosPortmobileFilePath *OrgLukhnosPortmobileFileFiles_createTempDirectoryWithOrgLukhnosPortmobileFilePath_withNSString_(void *a1, void *a2)
{
  if (!a1 || (TempFileWithNSString_withNSString_withJavaIoFile = JavaIoFile_createTempFileWithNSString_withNSString_withJavaIoFile_(a2, &stru_100484358, [a1 toFile])) == 0)
  {
    JreThrowNullPointerException();
  }

  v3 = TempFileWithNSString_withNSString_withJavaIoFile;
  [TempFileWithNSString_withNSString_withJavaIoFile delete];
  [(JavaIoFile *)v3 mkdir];
  v4 = new_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(v3);

  return v4;
}

OrgLukhnosPortmobileFileAttributeBasicFileAttributes *OrgLukhnosPortmobileFileFiles_readAttributesWithOrgLukhnosPortmobileFilePath_withIOSClass_(void *a1)
{
  if (!a1 || (v2 = a1[1]) == 0)
  {
    JreThrowNullPointerException();
  }

  if (![v2 exists])
  {
    v5 = new_OrgLukhnosPortmobileFileNoSuchFileException_init();
    objc_exception_throw(v5);
  }

  v3 = new_OrgLukhnosPortmobileFileAttributeBasicFileAttributes_initWithJavaIoFile_([a1 toFile]);

  return v3;
}

void *OrgApacheLuceneUtilAutomatonSortedIntSet_initWithInt_(id *a1, int a2)
{
  v4 = new_JavaUtilTreeMap_init();
  JreStrongAssignAndConsume(a1 + 5, v4);
  JreStrongAssignAndConsume(a1 + 1, [IOSIntArray newArrayWithLength:a2]);
  v5 = [IOSIntArray newArrayWithLength:a2];

  return JreStrongAssignAndConsume(a1 + 2, v5);
}

OrgApacheLuceneUtilAutomatonSortedIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneUtilAutomatonSortedIntSet alloc];
  OrgApacheLuceneUtilAutomatonSortedIntSet_initWithInt_(&v2->super.isa, a1);
  return v2;
}

OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(int a1, int a2)
{
  v4 = [OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet alloc];
  v6 = a1;
  JreStrongAssignAndConsume(&v4->values_, [IOSIntArray newArrayWithInts:&v6 count:1]);
  v4->hashCode_ = a1 + 683;
  v4->state_ = a2;
  return v4;
}

OrgApacheLuceneSearchFieldDoc *new_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_(int a1, float a2)
{
  v4 = [OrgApacheLuceneSearchFieldDoc alloc];
  OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneSearchFieldDoc *new_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_(int a1, void *a2, float a3)
{
  v6 = [OrgApacheLuceneSearchFieldDoc alloc];
  OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(v6, a1, a3);
  JreStrongAssign(&v6->fields_, a2);
  return v6;
}

id OrgApacheLuceneStoreIndexOutput_initWithNSString_(uint64_t a1, void *a2)
{
  OrgApacheLuceneStoreDataOutput_init();
  if (!a2)
  {
    v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"resourceDescription must not be null");
    objc_exception_throw(v5);
  }

  return JreStrongAssign((a1 + 16), a2);
}

id OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_(uint64_t a1, void *a2)
{
  OrgApacheLuceneIndexTermsEnum_init(a1);
  v4 = new_OrgApacheLuceneStoreByteArrayDataInput_init();
  JreStrongAssignAndConsume((a1 + 80), v4);
  v5 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  JreStrongAssignAndConsume((a1 + 48), v5);
  v6 = [IOSObjectArray newArrayWithLength:1 type:OrgApacheLuceneUtilFstFST_Arc_class_()];
  JreStrongAssignAndConsume((a1 + 104), v6);
  JreStrongAssign((a1 + 40), a2);
  JreStrongAssign((a1 + 56), qword_100554540);
  v7 = new_OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_withInt_(a1, -1);
  JreStrongAssignAndConsume((a1 + 64), v7);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v8 = a2[13];
  if (v8)
  {
    v9 = [v8 getBytesReader];
  }

  else
  {
    v9 = 0;
  }

  JreStrongAssign((a1 + 96), v9);
  v10 = *(a1 + 104);
  if (*(v10 + 8) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = new_OrgApacheLuceneUtilFstFST_Arc_init();
      IOSObjectArray_SetAndConsume(v10, v11++, v12);
      v10 = *(a1 + 104);
    }

    while (v11 < *(v10 + 8));
  }

  result = JreStrongAssign((a1 + 24), *(a1 + 64));
  v14 = a2[13];
  if (v14)
  {
    v15 = *(a1 + 104);
    v16 = *(v15 + 8);
    if (v16 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, 0);
    }

    result = [v14 getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:*(v15 + 24)];
  }

  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_1000DD034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 56);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v11 = *(v8 + 8);
  if (v11 <= a2)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v12 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2 + 1, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a3, a4, a5, a6, a7, a8);
    v13 = [IOSObjectArray arrayWithLength:v12 type:OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 56), 0, v13, 0, *(*(a1 + 56) + 8));
    v14 = *(*(a1 + 56) + 8);
    if (v14 < v13->super.size_)
    {
      do
      {
        v15 = new_OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame_initWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_withInt_(a1, v14);
        IOSObjectArray_SetAndConsume(v13, v14++, v15);
      }

      while (v14 < v13->super.size_);
    }

    JreStrongAssign((a1 + 56), v13);
    v8 = *(a1 + 56);
    v11 = *(v8 + 8);
  }

  if ((a2 & 0x80000000) != 0 || v11 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, a2);
  }

  return *(v8 + 24 + 8 * a2);
}

uint64_t sub_1000DD1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 104);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v11 = *(v8 + 8);
  if (v11 <= a2)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v12 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2 + 1, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, a3, a4, a5, a6, a7, a8);
    v13 = [IOSObjectArray arrayWithLength:v12 type:OrgApacheLuceneUtilFstFST_Arc_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a1 + 104), 0, v13, 0, *(*(a1 + 104) + 8));
    v14 = *(*(a1 + 104) + 8);
    if (v14 < v13->super.size_)
    {
      do
      {
        v15 = new_OrgApacheLuceneUtilFstFST_Arc_init();
        IOSObjectArray_SetAndConsume(v13, v14++, v15);
      }

      while (v14 < v13->super.size_);
    }

    JreStrongAssign((a1 + 104), v13);
    v8 = *(a1 + 104);
    v11 = *(v8 + 8);
  }

  if ((a2 & 0x80000000) != 0 || v11 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, a2);
  }

  return *(v8 + 24 + 8 * a2);
}

OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *new_OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_(void *a1)
{
  v2 = [OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum alloc];
  OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum_initWithOrgApacheLuceneCodecsBlocktreeFieldReader_(v2, a1);
  return v2;
}

OrgApacheLuceneSearchDisjunctionMaxScorer *new_OrgApacheLuceneSearchDisjunctionMaxScorer_initWithOrgApacheLuceneSearchWeight_withFloat_withJavaUtilList_withBoolean_(void *a1, void *a2, char a3, float a4)
{
  v8 = [OrgApacheLuceneSearchDisjunctionMaxScorer alloc];
  OrgApacheLuceneSearchDisjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withBoolean_(v8, a1, a2, a3);
  v8->tieBreakerMultiplier_ = a4;
  return v8;
}

id OrgApacheLuceneUtilDocIdSetBuilder_initWithInt_(uint64_t a1, unsigned int a2)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a2 >> 7;
  JreStrongAssignAndConsume((a1 + 16), [IOSIntArray newArrayWithLength:0]);
  *(a1 + 24) = 0;

  return JreStrongAssign((a1 + 32), 0);
}

id sub_1000DFA70(uint64_t a1)
{
  v2 = new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(*(a1 + 8));
  JreStrongAssignAndConsume((a1 + 32), v2);
  if (*(a1 + 24) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + 16);
      if (!v4)
      {
        JreThrowNullPointerException();
      }

      v5 = *(v4 + 8);
      if (v3 >= v5)
      {
        IOSArray_throwOutOfBoundsWithMsg(v5, v3);
      }

      [*(a1 + 32) setWithInt:*(v4 + 12 + 4 * v3++)];
    }

    while (v3 < *(a1 + 24));
  }

  result = JreStrongAssign((a1 + 16), 0);
  *(a1 + 24) = 0;
  return result;
}

char *sub_1000DFB40(char *result, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (result + 16);
  v8 = *(result + 2);
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  if (*(v8 + 8) < a2)
  {
    v10 = result;
    v11 = *(result + 3);
    v12 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(a2, 4, a3, a4, a5, a6, a7, a8);
    v13 = [IOSIntArray arrayWithLength:JavaLangMath_minWithInt_withInt_(v11, v12)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v10[2], 0, v13, 0, *(v10[2] + 2));

    return JreStrongAssign(v9, v13);
  }

  return result;
}

OrgApacheLuceneUtilDocIdSetBuilder *new_OrgApacheLuceneUtilDocIdSetBuilder_initWithInt_(unsigned int a1)
{
  v2 = [OrgApacheLuceneUtilDocIdSetBuilder alloc];
  OrgApacheLuceneUtilDocIdSetBuilder_initWithInt_(v2, a1);
  return v2;
}

uint64_t OrgApacheLuceneSearchFieldComparator_class_()
{
  if (qword_100554550 != -1)
  {
    sub_1000E39A4();
  }

  return qword_100554548;
}

id OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(uint64_t a1, void *a2, void *a3)
{
  OrgApacheLuceneSearchSimpleFieldComparator_init();
  JreStrongAssign((a1 + 16), a2);

  return JreStrongAssign((a1 + 8), a3);
}

OrgApacheLuceneSearchFieldComparator_DoubleComparator *new_OrgApacheLuceneSearchFieldComparator_DoubleComparator_initWithInt_withNSString_withJavaLangDouble_(int a1, void *a2, void *a3)
{
  v6 = [OrgApacheLuceneSearchFieldComparator_DoubleComparator alloc];
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(v6, a2, a3);
  JreStrongAssignAndConsume(&v6->values_, [IOSDoubleArray newArrayWithLength:a1]);
  return v6;
}

OrgApacheLuceneSearchFieldComparator_FloatComparator *new_OrgApacheLuceneSearchFieldComparator_FloatComparator_initWithInt_withNSString_withJavaLangFloat_(int a1, void *a2, void *a3)
{
  v6 = [OrgApacheLuceneSearchFieldComparator_FloatComparator alloc];
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(v6, a2, a3);
  JreStrongAssignAndConsume(&v6->values_, [IOSFloatArray newArrayWithLength:a1]);
  return v6;
}

OrgApacheLuceneSearchFieldComparator_IntComparator *new_OrgApacheLuceneSearchFieldComparator_IntComparator_initWithInt_withNSString_withJavaLangInteger_(int a1, void *a2, void *a3)
{
  v6 = [OrgApacheLuceneSearchFieldComparator_IntComparator alloc];
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(v6, a2, a3);
  JreStrongAssignAndConsume(&v6->values_, [IOSIntArray newArrayWithLength:a1]);
  return v6;
}

OrgApacheLuceneSearchFieldComparator_LongComparator *new_OrgApacheLuceneSearchFieldComparator_LongComparator_initWithInt_withNSString_withJavaLangLong_(int a1, void *a2, void *a3)
{
  v6 = [OrgApacheLuceneSearchFieldComparator_LongComparator alloc];
  OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(v6, a2, a3);
  JreStrongAssignAndConsume(&v6->values_, [IOSLongArray newArrayWithLength:a1]);
  return v6;
}

OrgApacheLuceneSearchFieldComparator_RelevanceComparator *new_OrgApacheLuceneSearchFieldComparator_RelevanceComparator_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneSearchFieldComparator_RelevanceComparator alloc];
  JreStrongAssignAndConsume(&v2->scores_, [IOSFloatArray newArrayWithLength:a1]);
  return v2;
}

OrgApacheLuceneSearchFieldComparator_DocComparator *new_OrgApacheLuceneSearchFieldComparator_DocComparator_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneSearchFieldComparator_DocComparator alloc];
  JreStrongAssignAndConsume(&v2->docIDs_, [IOSIntArray newArrayWithLength:a1]);
  return v2;
}

id OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_initWithInt_withNSString_withBoolean_(uint64_t a1, int a2, void *a3, int a4)
{
  *(a1 + 32) = -1;
  *(a1 + 48) = -1;
  v7 = a2;
  JreStrongAssignAndConsume((a1 + 8), [IOSIntArray newArrayWithLength:a2]);
  v8 = [IOSObjectArray newArrayWithLength:v7 type:OrgApacheLuceneUtilBytesRef_class_()];
  JreStrongAssignAndConsume((a1 + 16), v8);
  v9 = [IOSObjectArray newArrayWithLength:v7 type:OrgApacheLuceneUtilBytesRefBuilder_class_()];
  JreStrongAssignAndConsume((a1 + 96), v9);
  JreStrongAssignAndConsume((a1 + 24), [IOSIntArray newArrayWithLength:v7]);
  result = JreStrongAssign((a1 + 104), a3);
  if (a4)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  if (a4)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = -1;
  }

  *(a1 + 88) = v11;
  *(a1 + 92) = v12;
  return result;
}

OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *new_OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_initWithInt_withNSString_withBoolean_(int a1, void *a2, int a3)
{
  v6 = [OrgApacheLuceneSearchFieldComparator_TermOrdValComparator alloc];
  OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_initWithInt_withNSString_withBoolean_(v6, a1, a2, a3);
  return v6;
}

id OrgApacheLuceneSearchFieldComparator_TermValComparator_initWithInt_withNSString_withBoolean_(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a2;
  v8 = [IOSObjectArray newArrayWithLength:a2 type:OrgApacheLuceneUtilBytesRef_class_()];
  JreStrongAssignAndConsume((a1 + 8), v8);
  v9 = [IOSObjectArray newArrayWithLength:v7 type:OrgApacheLuceneUtilBytesRefBuilder_class_()];
  JreStrongAssignAndConsume((a1 + 16), v9);
  result = JreStrongAssign((a1 + 40), a3);
  if (a4)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  *(a1 + 64) = v11;
  return result;
}

OrgApacheLuceneSearchFieldComparator_TermValComparator *new_OrgApacheLuceneSearchFieldComparator_TermValComparator_initWithInt_withNSString_withBoolean_(int a1, void *a2, int a3)
{
  v6 = [OrgApacheLuceneSearchFieldComparator_TermValComparator alloc];
  OrgApacheLuceneSearchFieldComparator_TermValComparator_initWithInt_withNSString_withBoolean_(v6, a1, a2, a3);
  return v6;
}

uint64_t OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstByteSequenceOutputs__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E4050();
  }

  return qword_100554568;
}

uint64_t OrgApacheLuceneSearchBooleanQuery_setMaxClauseCountWithInt_(uint64_t result)
{
  if (result <= 0)
  {
    v1 = new_JavaLangIllegalArgumentException_initWithNSString_(@"maxClauseCount must be >= 1");
    objc_exception_throw(v1);
  }

  dword_10054EE60 = result;
  return result;
}

id sub_1000E40D8(uint64_t a1, char a2, int a3, void *a4)
{
  OrgApacheLuceneSearchQuery_init(a1);
  *(a1 + 13) = a2;
  *(a1 + 16) = a3;
  v8 = JavaUtilArrays_asListWithNSObjectArray_(a4);
  v9 = JavaUtilCollections_unmodifiableListWithJavaUtilList_(v8);
  result = JreStrongAssign((a1 + 20), v9);
  *(a1 + 12) = 0;
  return result;
}

id sub_1000E41B8(uint64_t a1)
{
  v2 = [OrgApacheLuceneSearchBooleanQuery_Builder alloc];
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&v2->clauses_, v3);
  v4 = v2;
  -[OrgApacheLuceneSearchBooleanQuery_Builder setMinimumNumberShouldMatchWithInt:](v4, "setMinimumNumberShouldMatchWithInt:", [a1 getMinimumNumberShouldMatch]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 20);
  if (!v5)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (!v10)
        {
          goto LABEL_18;
        }

        v11 = [*(*(&v14 + 1) + 8 * v9) getOccur];
        if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10002605C();
        }

        if (v11 == OrgApacheLuceneSearchBooleanClause_OccurEnum_values_)
        {
          v12 = [v10 getQuery];
          if ((atomic_load_explicit(OrgApacheLuceneSearchBooleanClause_OccurEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10002605C();
          }

          [(OrgApacheLuceneSearchBooleanQuery_Builder *)v4 addWithOrgApacheLuceneSearchQuery:v12 withOrgApacheLuceneSearchBooleanClause_OccurEnum:qword_100557BA0];
        }

        else
        {
          [(OrgApacheLuceneSearchBooleanQuery_Builder *)v4 addWithOrgApacheLuceneSearchBooleanClause:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return [(OrgApacheLuceneSearchBooleanQuery_Builder *)v4 build];
}

void *OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(uint64_t a1, char a2)
{
  OrgApacheLuceneSearchQuery_init(a1);
  v4 = new_JavaUtilArrayList_init();
  result = JreStrongAssignAndConsume((a1 + 20), v4);
  *(a1 + 13) = a2;
  *(a1 + 16) = 0;
  *(a1 + 12) = 1;
  return result;
}

uint64_t sub_1000E4CEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(result + 12) & 1) == 0)
  {
    v8 = JreStrcat("$$$", a2, a3, a4, a5, a6, a7, a8, @"This BooleanQuery has been created with the new BooleanQuery.Builder API. It must not be modified afterwards. The ");
    v9 = new_JavaLangIllegalStateException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  return result;
}

OrgApacheLuceneSearchBooleanQuery_TooManyClauses *new_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init()
{
  v0 = [OrgApacheLuceneSearchBooleanQuery_TooManyClauses alloc];
  v8 = JreStrcat("$I", v1, v2, v3, v4, v5, v6, v7, @"maxClauseCount is set to ");
  JavaLangRuntimeException_initWithNSString_(v0, v8);
  return v0;
}

OrgApacheLuceneSearchBooleanQuery_Builder *new_OrgApacheLuceneSearchBooleanQuery_Builder_init()
{
  v0 = [OrgApacheLuceneSearchBooleanQuery_Builder alloc];
  v1 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&v0->clauses_, v1);
  return v0;
}

OrgApacheLuceneUtilThreadInterruptedException *new_OrgApacheLuceneUtilThreadInterruptedException_initWithJavaLangInterruptedException_(uint64_t a1)
{
  v2 = [OrgApacheLuceneUtilThreadInterruptedException alloc];
  JavaLangRuntimeException_initWithJavaLangThrowable_(v2, a1);
  return v2;
}

uint64_t OrgApacheLuceneIndexSortedSetDocValues_class_()
{
  if (qword_100554578 != -1)
  {
    sub_1000E5360();
  }

  return qword_100554570;
}

id OrgApacheLuceneStoreIOContext_initWithOrgApacheLuceneStoreFlushInfo_(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext_ContextEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E5C44();
  }

  JreStrongAssign((a1 + 8), qword_1005579E8);
  JreStrongAssign((a1 + 16), 0);
  *(a1 + 32) = 0;

  return JreStrongAssign((a1 + 24), a2);
}

id sub_1000E549C(uint64_t a1, char a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext_ContextEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E5C44();
  }

  JreStrongAssign((a1 + 8), qword_1005579E0);
  JreStrongAssign((a1 + 16), 0);
  *(a1 + 32) = a2;

  return JreStrongAssign((a1 + 24), 0);
}

id OrgApacheLuceneStoreIOContext_initWithOrgApacheLuceneStoreMergeInfo_(uint64_t a1, void *a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext_ContextEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E5C44();
  }

  v4 = OrgApacheLuceneStoreIOContext_ContextEnum_values_;

  return sub_1000E55C8(a1, v4, a2);
}

id sub_1000E55C8(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 32) = 0;
  JreStrongAssign((a1 + 16), a3);

  return JreStrongAssign((a1 + 24), 0);
}

id OrgApacheLuceneStoreIOContext_initWithOrgApacheLuceneStoreIOContext_withBoolean_(uint64_t a1, void **a2, char a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 8), a2[1]);
  JreStrongAssign((a1 + 16), a2[2]);
  result = JreStrongAssign((a1 + 24), a2[3]);
  *(a1 + 32) = a3;
  return result;
}

IOSObjectArray *OrgApacheLuceneStoreIOContext_ContextEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext_ContextEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E5C44();
  }

  v0 = OrgApacheLuceneStoreIOContext_ContextEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneStoreIOContext_ContextEnum_values_ count:4 type:v0];
}

void *OrgApacheLuceneStoreIOContext_ContextEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext_ContextEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E5C44();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneStoreIOContext_ContextEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 4)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t OrgApacheLuceneStoreIOContext_ContextEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext_ContextEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E5C44();
  }

  if (qword_100554588 != -1)
  {
    sub_1000E5C50();
  }

  return qword_100554580;
}

id OrgApacheLuceneStoreFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(uint64_t a1, void *a2, void *a3)
{
  OrgApacheLuceneStoreBaseDirectory_initWithOrgApacheLuceneStoreLockFactory_(a1, a3);
  if ((OrgLukhnosPortmobileFileFiles_isDirectoryWithOrgLukhnosPortmobileFilePath_(a2) & 1) == 0)
  {
    OrgLukhnosPortmobileFileFiles_createDirectoriesWithOrgLukhnosPortmobileFilePath_(a2);
  }

  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v5 = [a2 toRealPath];

  return JreStrongAssign((a1 + 24), v5);
}

id OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(void *a1, void *a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100070498();
  }

  if (OrgApacheLuceneUtilConstants_JRE_IS_64BIT_ != 1)
  {
    goto LABEL_8;
  }

  if ((atomic_load_explicit(&OrgApacheLuceneStoreMMapDirectory__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E673C();
  }

  if (OrgApacheLuceneStoreMMapDirectory_UNMAP_SUPPORTED_ == 1)
  {
    v4 = new_OrgApacheLuceneStoreMMapDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(a1, a2);
  }

  else
  {
LABEL_8:
    if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100070498();
    }

    if (OrgApacheLuceneUtilConstants_WINDOWS_ == 1)
    {
      v4 = new_OrgApacheLuceneStoreSimpleFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(a1, a2);
    }

    else
    {
      v4 = new_OrgApacheLuceneStoreNIOFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(a1, a2);
    }
  }

  return v4;
}

id OrgApacheLuceneStoreFSDirectory_listAllWithOrgLukhnosPortmobileFilePath_(void *a1)
{
  v2 = new_JavaUtilArrayList_init();
  v3 = OrgLukhnosPortmobileFileFiles_newDirectoryStreamWithOrgLukhnosPortmobileFilePath_(a1);
  v4 = v3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (!v3)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v5 = [(OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (!v8)
        {
          goto LABEL_12;
        }

        v9 = [v8 getFileName];
        if (!v9)
        {
          goto LABEL_12;
        }

        -[JavaUtilArrayList addWithId:](v2, "addWithId:", [v9 description]);
      }

      v5 = [(OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream *)v4 close];
  return [(JavaUtilArrayList *)v2 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)v2 size] type:NSString_class_()]];
}

void sub_1000E6020()
{
  objc_end_catch();
  objc_end_catch();
  JUMPOUT(0x1000E6068);
}

void sub_1000E602C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1000E5F50);
  }

  JUMPOUT(0x1000E6068);
}

void sub_1000E6040()
{
  if (v0)
  {
    objc_end_catch();
  }

  JUMPOUT(0x1000E6068);
}

void sub_1000E6058(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1000E6068);
}

void *OrgApacheLuceneStoreFSDirectory_FSIndexOutput_initWithOrgApacheLuceneStoreFSDirectory_withNSString_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 resolveWithNSString:?];
  v14 = JreStrcat("$@$", v7, v8, v9, v10, v11, v12, v13, @"FSIndexOutput(path=");
  v15 = OrgLukhnosPortmobileFileFiles_newOutputStreamWithOrgLukhnosPortmobileFilePath_([*(a2 + 24) resolveWithNSString:a3]);
  v16 = [OrgApacheLuceneStoreFSDirectory_FSIndexOutput__1 alloc];
  JavaIoFilterOutputStream_initWithJavaIoOutputStream_(v16, v15);
  v17 = v16;

  return OrgApacheLuceneStoreOutputStreamIndexOutput_initWithNSString_withJavaIoOutputStream_withInt_(a1, v14, v17, 0x2000);
}

id OrgApacheLuceneIndexIndexReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withInt_withInt_(uint64_t a1, void *a2, int a3, int a4)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = new_JavaLangError_initWithNSString_(@"This class should never be extended by custom code!");
      objc_exception_throw(v9);
    }
  }

  result = JreStrongAssign((a1 + 8), a2);
  *(a1 + 20) = a4;
  *(a1 + 24) = a3;
  *(a1 + 16) = a2 == 0;
  return result;
}

uint64_t OrgApacheLuceneIndexIndexReaderContext_class_()
{
  if (qword_100554598 != -1)
  {
    sub_1000E68D4();
  }

  return qword_100554590;
}

id OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(uint64_t a1, int a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  OrgApacheLuceneUtilPackedPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLong_withLong_(a1, a2, a3, a4, a6, a7);

  return JreStrongAssign((a1 + 40), a5);
}

OrgApacheLuceneUtilPackedDeltaPackedLongValues *new_OrgApacheLuceneUtilPackedDeltaPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLongArray_withLong_withLong_(int a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = [OrgApacheLuceneUtilPackedDeltaPackedLongValues alloc];
  OrgApacheLuceneUtilPackedPackedLongValues_initWithInt_withInt_withOrgApacheLuceneUtilPackedPackedInts_ReaderArray_withLong_withLong_(v12, a1, a2, a3, a5, a6);
  JreStrongAssign(&v12->mins_, a4);
  return v12;
}

uint64_t OrgApacheLuceneUtilPackedDeltaPackedLongValues_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilPackedDeltaPackedLongValues__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E72BC();
  }

  if (qword_1005545B0 != -1)
  {
    sub_1000E72C8();
  }

  return qword_1005545A8;
}

uint64_t OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_initWithInt_withFloat_(uint64_t a1, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  OrgApacheLuceneUtilPackedPackedLongValues_Builder_initWithInt_withFloat_(a1, a2, a9, a3, a4, a5, a6, a7, a8);
  v10 = *(a1 + 40);
  if (!v10)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssignAndConsume((a1 + 64), [IOSLongArray newArrayWithLength:*(v10 + 8)]);
  result = OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(*(a1 + 64));
  *(a1 + 48) += result;
  return result;
}

OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder *new_OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_initWithInt_withFloat_(signed int a1, float a2)
{
  v4 = [OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder alloc];
  OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_initWithInt_withFloat_(v4, a1, v5, v6, v7, v8, v9, v10, a2);
  return v4;
}

uint64_t OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedDeltaPackedLongValues_Builder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000E72DC();
  }

  if (qword_1005545C8 != -1)
  {
    sub_1000E72E8();
  }

  return qword_1005545C0;
}

id OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneCodecsDocValuesProducer_init(a1);
  v4 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 8), v4);
  v5 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 16), v5);
  v6 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 24), v6);
  v7 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 32), v7);
  v8 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 40), v8);
  v9 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 48), v9);
  v10 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 88), v10);
  v11 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 96), v11);
  v12 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 104), v12);
  if (!a2)
  {
    goto LABEL_5;
  }

  [*(a1 + 8) putAllWithJavaUtilMap:*(a2 + 8)];
  [*(a1 + 16) putAllWithJavaUtilMap:*(a2 + 16)];
  [*(a1 + 24) putAllWithJavaUtilMap:*(a2 + 24)];
  [*(a1 + 32) putAllWithJavaUtilMap:*(a2 + 32)];
  [*(a1 + 40) putAllWithJavaUtilMap:*(a2 + 40)];
  [*(a1 + 48) putAllWithJavaUtilMap:*(a2 + 48)];
  *(a1 + 56) = *(a2 + 56);
  v13 = *(a2 + 64);
  if (!v13 || (v14 = new_JavaUtilConcurrentAtomicAtomicLong_initWithLong_([v13 get]), JreStrongAssignAndConsume((a1 + 64), v14), (v15 = *(a2 + 72)) == 0))
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 72), [v15 clone]);
  *(a1 + 80) = *(a2 + 80);
  [*(a1 + 88) putAllWithJavaUtilMap:*(a2 + 88)];
  [*(a1 + 96) putAllWithJavaUtilMap:*(a2 + 96)];
  result = [*(a1 + 104) putAllWithJavaUtilMap:*(a2 + 104)];
  *(a1 + 112) = 1;
  return result;
}

unint64_t OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  OrgApacheLuceneCodecsDocValuesProducer_init(a1);
  v12 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 8), v12);
  v13 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 16), v13);
  v14 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 24), v14);
  v15 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 32), v15);
  v16 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 40), v16);
  v17 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 48), v17);
  v18 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 88), v18);
  v19 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 96), v19);
  v20 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 104), v20);
  if (!a2)
  {
    goto LABEL_9;
  }

  v21 = *(a2 + 16);
  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(v21 + 8), *(a2 + 40), a6);
  *(a1 + 80) = [*(a2 + 16) maxDoc];
  *(a1 + 112) = 0;
  v23 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_([a1 getClass]);
  v24 = new_JavaUtilConcurrentAtomicAtomicLong_initWithLong_(v23);
  JreStrongAssignAndConsume((a1 + 64), v24);
  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_9;
  }

  v26 = [v25 openChecksumInputWithNSString:v22 withOrgApacheLuceneStoreIOContext:*(a2 + 32)];
  v27 = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(v26, a5, 0, 1, [*(a2 + 16) getId], *(a2 + 40));
  v28 = sub_1000E7F54(a1, v26, *(a2 + 24));
  OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(v26, 0);
  if (v26)
  {
    [v26 close];
  }

  *(a1 + 56) = v28;
  v29 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(*(a2 + 16) + 8), *(a2 + 40), a4);
  v30 = *(a2 + 8);
  if (!v30)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 72), [v30 openInputWithNSString:v29 withOrgApacheLuceneStoreIOContext:*(a2 + 32)]);
  if (v27 != OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(*(a1 + 72), a3, 0, 1, [*(a2 + 16) getId], *(a2 + 40)))
  {
    v39 = JreStrcat("$I$I", v31, v32, v33, v34, v35, v36, v37, @"Format versions mismatch: meta=");
    v40 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v39, *(a1 + 72));
    objc_exception_throw(v40);
  }

  return OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(*(a1 + 72));
}

void sub_1000E7A14()
{
  objc_end_catch();
  objc_end_catch();
  JUMPOUT(0x1000E7ACCLL);
}

void sub_1000E7A2C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      objc_end_catch();
    }

    JUMPOUT(0x1000E77E8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1000E7A70(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    a15 = *(v15 + *(v16 + 320));
    v17 = [IOSObjectArray arrayWithObjects:&a15 count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v17);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1000E7AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1000E7ACCLL);
  }

  objc_terminate();
}

id sub_1000E7AE4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    goto LABEL_12;
  }

  v6 = [a3 readVInt];
  if (!a2)
  {
    goto LABEL_12;
  }

  if (v6 != *(a2 + 16) || [a3 readByte] != 1)
  {
    goto LABEL_13;
  }

  BinaryEntryWithOrgApacheLuceneStoreIndexInput = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_readBinaryEntryWithOrgApacheLuceneStoreIndexInput_(a3);
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_12;
  }

  [v15 putWithId:*(a2 + 8) withId:BinaryEntryWithOrgApacheLuceneStoreIndexInput];
  if ([a3 readVInt] != *(a2 + 16) || objc_msgSend(a3, "readByte"))
  {
LABEL_13:
    v22 = *(a2 + 8);
    v20 = JreStrcat("$$$", v7, v8, v9, v10, v11, v12, v13, @"sorted entry for field: ");
    v21 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v20, a3);
    objc_exception_throw(v21);
  }

  v16 = sub_1000E8340(a1, a3);
  v17 = *(a1 + 40);
  if (!v17)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v18 = *(a2 + 8);

  return [v17 putWithId:v18 withId:v16];
}

id sub_1000E7C44(void *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    goto LABEL_15;
  }

  v6 = [a3 readVInt];
  if (!a2)
  {
    goto LABEL_15;
  }

  if (v6 != *(a2 + 16) || [a3 readByte] != 1)
  {
    goto LABEL_16;
  }

  BinaryEntryWithOrgApacheLuceneStoreIndexInput = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_readBinaryEntryWithOrgApacheLuceneStoreIndexInput_(a3);
  v15 = a1[2];
  if (!v15)
  {
    goto LABEL_15;
  }

  [v15 putWithId:*(a2 + 8) withId:BinaryEntryWithOrgApacheLuceneStoreIndexInput];
  if ([a3 readVInt] != *(a2 + 16) || objc_msgSend(a3, "readByte"))
  {
    goto LABEL_16;
  }

  v16 = sub_1000E8340(a1, a3);
  v17 = a1[5];
  if (!v17)
  {
    goto LABEL_15;
  }

  [v17 putWithId:*(a2 + 8) withId:v16];
  if ([a3 readVInt] != *(a2 + 16) || objc_msgSend(a3, "readByte"))
  {
LABEL_16:
    v24 = *(a2 + 8);
    v22 = JreStrcat("$$$", v7, v8, v9, v10, v11, v12, v13, @"sortedset entry for field: ");
    v23 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v22, a3);
    objc_exception_throw(v23);
  }

  v18 = sub_1000E8340(a1, a3);
  v19 = a1[6];
  if (!v19)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v20 = *(a2 + 8);

  return [v19 putWithId:v20 withId:v18];
}

id sub_1000E7DF4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    goto LABEL_12;
  }

  v6 = [a3 readVInt];
  if (!a2)
  {
    goto LABEL_12;
  }

  if (v6 != *(a2 + 16) || [a3 readByte] != 1)
  {
    goto LABEL_13;
  }

  BinaryEntryWithOrgApacheLuceneStoreIndexInput = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_readBinaryEntryWithOrgApacheLuceneStoreIndexInput_(a3);
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_12;
  }

  [v15 putWithId:*(a2 + 8) withId:BinaryEntryWithOrgApacheLuceneStoreIndexInput];
  if ([a3 readVInt] != *(a2 + 16) || objc_msgSend(a3, "readByte"))
  {
LABEL_13:
    v22 = *(a2 + 8);
    v20 = JreStrcat("$$$", v7, v8, v9, v10, v11, v12, v13, @"sortedset entry for field: ");
    v21 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v20, a3);
    objc_exception_throw(v21);
  }

  v16 = sub_1000E8340(a1, a3);
  v17 = *(a1 + 40);
  if (!v17)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v18 = *(a2 + 8);

  return [v17 putWithId:v18 withId:v16];
}

uint64_t sub_1000E7F54(void *a1, void *a2, void *a3)
{
  if (!a2)
  {
    goto LABEL_48;
  }

  v6 = [a2 readVInt];
  if (v6 != -1)
  {
    if (a3)
    {
      v7 = v6;
      LODWORD(v8) = 0;
      v54 = a3;
      while (1)
      {
        v9 = [a3 fieldInfoWithInt:v7];
        if (!v9)
        {
          v49 = JreStrcat("$I", v10, v11, v12, v13, v14, v15, v16, @"Invalid field number: ");
          goto LABEL_56;
        }

        v17 = v9;
        v25 = [a2 readByte];
        if (v25 <= 1)
        {
          if (v25)
          {
            BinaryEntryWithOrgApacheLuceneStoreIndexInput = OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_readBinaryEntryWithOrgApacheLuceneStoreIndexInput_(a2);
            v40 = 2;
            goto LABEL_41;
          }

          goto LABEL_36;
        }

        switch(v25)
        {
          case 2u:
            goto LABEL_32;
          case 3u:
            v41 = [a1 readSortedSetEntryWithOrgApacheLuceneStoreIndexInput:a2];
            v42 = a1[3];
            if (!v42)
            {
              goto LABEL_48;
            }

            [v42 putWithId:*(v17 + 8) withId:v41];
            if (!v41)
            {
              goto LABEL_48;
            }

            v43 = v41[2];
            if (v43 == 2)
            {
              sub_1000E7DF4(a1, v17, a2);
              break;
            }

            if (v43 == 1)
            {
              if ([a2 readVInt] != v7 || objc_msgSend(a2, "readByte") != 2)
              {
                v51 = *(v17 + 8);
                v52 = @"sortedset entry for field: ";
                goto LABEL_55;
              }

LABEL_32:
              sub_1000E7AE4(a1, v17, a2);
              break;
            }

            if (v43)
            {
LABEL_52:
              v50 = new_JavaLangAssertionError_init();
              goto LABEL_57;
            }

            sub_1000E7C44(a1, v17, a2);
            break;
          case 4u:
            v26 = [a1 readSortedSetEntryWithOrgApacheLuceneStoreIndexInput:a2];
            v27 = a1[4];
            if (!v27)
            {
              goto LABEL_48;
            }

            [v27 putWithId:*(v17 + 8) withId:v26];
            if (!v26)
            {
              goto LABEL_48;
            }

            v28 = v26[2];
            if (v28 == 2)
            {
              if ([a2 readVInt] != *(v17 + 16) || objc_msgSend(a2, "readByte"))
              {
                goto LABEL_54;
              }

              BinaryEntryWithOrgApacheLuceneStoreIndexInput = sub_1000E8340(a1, a2);
              v40 = 5;
LABEL_41:
              v46 = a1[v40];
              if (!v46)
              {
                goto LABEL_48;
              }

              v47 = *(v17 + 8);
LABEL_43:
              [v46 putWithId:v47 withId:BinaryEntryWithOrgApacheLuceneStoreIndexInput];
              break;
            }

            if (v28 == 1)
            {
              if ([a2 readVInt] != v7 || objc_msgSend(a2, "readByte"))
              {
                goto LABEL_54;
              }

LABEL_36:
              v44 = a1[1];
              if (!v44)
              {
                goto LABEL_48;
              }

              v45 = *(v17 + 8);
              BinaryEntryWithOrgApacheLuceneStoreIndexInput = sub_1000E8340(a1, a2);
              v46 = v44;
              v47 = v45;
              goto LABEL_43;
            }

            if (v28)
            {
              goto LABEL_52;
            }

            if ([a2 readVInt] != v7 || objc_msgSend(a2, "readByte"))
            {
              goto LABEL_54;
            }

            v36 = a1[1];
            if (!v36)
            {
              goto LABEL_48;
            }

            [v36 putWithId:*(v17 + 8) withId:{sub_1000E8340(a1, a2)}];
            if ([a2 readVInt] != v7 || objc_msgSend(a2, "readByte"))
            {
LABEL_54:
              v53 = *(v17 + 8);
              v52 = @"sortednumeric entry for field: ";
LABEL_55:
              v49 = JreStrcat("$$$", v29, v30, v31, v32, v33, v34, v35, v52);
LABEL_56:
              v50 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v49, a2);
LABEL_57:
              objc_exception_throw(v50);
            }

            v37 = sub_1000E8340(a1, a2);
            v38 = a1[6];
            if (!v38)
            {
              goto LABEL_48;
            }

            [v38 putWithId:*(v17 + 8) withId:v37];
            a3 = v54;
            break;
          default:
            v49 = JreStrcat("$B", v18, v19, v20, v21, v22, v23, v24, @"invalid type: ");
            goto LABEL_56;
        }

        v7 = [a2 readVInt];
        v8 = (v8 + 1);
        if (v7 == -1)
        {
          return v8;
        }
      }
    }

LABEL_48:
    JreThrowNullPointerException();
  }

  return 0;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry *sub_1000E8340(uint64_t a1, void *a2)
{
  v4 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry alloc];
  if (!a2)
  {
    goto LABEL_25;
  }

  v5 = v4;
  v4->format_ = [a2 readVInt];
  v5->missingOffset_ = [a2 readLong];
  v5->offset_ = [a2 readLong];
  v5->count_ = [a2 readVLong];
  format = v5->format_;
  if (format <= 1)
  {
    if (format)
    {
      if (format != 1)
      {
        goto LABEL_26;
      }

      v5->minValue_ = [a2 readLong];
      v5->gcd_ = [a2 readLong];
    }

    else
    {
      v5->minValue_ = [a2 readLong];
    }

    goto LABEL_22;
  }

  if (format == 2)
  {
    v22 = [a2 readVInt];
    v30 = v22;
    if (v22 >= 257)
    {
      v21 = JreStrcat("$I", v23, v24, v25, v26, v27, v28, v29, @"TABLE_COMPRESSED cannot have more than 256 distinct values, got=");
LABEL_28:
      v39 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v21, a2);
      objc_exception_throw(v39);
    }

    JreStrongAssignAndConsume(&v5->table_, [IOSLongArray newArrayWithLength:v22]);
    if (v30 >= 1)
    {
      v31 = 0;
      v32 = v30;
      do
      {
        v33 = [a2 readLong];
        table = v5->table_;
        size = table->super.size_;
        if (v31 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v31);
        }

        table->buffer_[v31++] = v33;
      }

      while (v32 != v31);
    }

    v37 = *(a1 + 64);
    if (v37)
    {
      [v37 addAndGetWithLong:OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(v5->table_)];
LABEL_22:
      v36 = 32;
      goto LABEL_23;
    }

LABEL_25:
    JreThrowNullPointerException();
  }

  if (format == 3)
  {
    v5->packedIntsVersion_ = [a2 readVInt];
    v36 = 56;
LABEL_23:
    *(&v5->super.isa + v36) = [a2 readVInt];
    goto LABEL_24;
  }

  if (format != 4)
  {
LABEL_26:
    v41 = v5->format_;
    v21 = JreStrcat("$I$", v6, v7, v8, v9, v10, v11, v12, @"Unknown format: ");
    goto LABEL_28;
  }

  v5->minValue_ = [a2 readLong];
  if (v5->count_ >= 0x80000000)
  {
    count = v5->count_;
    v21 = JreStrcat("$J", v14, v15, v16, v17, v18, v19, v20, @"illegal CONST_COMPRESSED count: ");
    goto LABEL_28;
  }

LABEL_24:
  v5->endOffset_ = [a2 readLong];
  return v5;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry *OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_readBinaryEntryWithOrgApacheLuceneStoreIndexInput_(void *a1)
{
  v2 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry alloc];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  v2->format_ = [a1 readVInt];
  v3->missingOffset_ = [a1 readLong];
  v3->minLength_ = [a1 readVInt];
  v3->maxLength_ = [a1 readVInt];
  v3->count_ = [a1 readVLong];
  v3->offset_ = [a1 readLong];
  format = v3->format_;
  if (format)
  {
    if (format == 1)
    {
      v3->addressesOffset_ = [a1 readLong];
      v3->packedIntsVersion_ = [a1 readVInt];
      v3->blockSize_ = [a1 readVInt];
    }

    else
    {
      if (format != 2)
      {
        v15 = v3->format_;
        v13 = JreStrcat("$I", v4, v5, v6, v7, v8, v9, v10, @"Unknown format: ");
        v14 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v13, a1);
        objc_exception_throw(v14);
      }

      v3->addressesOffset_ = [a1 readLong];
      v3->packedIntsVersion_ = [a1 readVInt];
      v3->blockSize_ = [a1 readVInt];
      v3->reverseIndexOffset_ = [a1 readLong];
    }
  }

  return v3;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$12 *sub_1000E8CFC(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 == -1)
  {
    matched = new_OrgApacheLuceneUtilBits_MatchAllBits_initWithInt_(a3);
    goto LABEL_5;
  }

  if (a2 == -2)
  {
    matched = new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_(a3);
LABEL_5:
    v5 = matched;
    goto LABEL_8;
  }

  v6 = *(a1 + 72);
  if (!v6)
  {
    JreThrowNullPointerException();
  }

  v7 = [v6 randomAccessSliceWithLong:a2 withLong:((a3 << 29) + 3758096384) >> 32];
  v5 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__12 alloc];
  JreStrongAssign(&v5->val$in_, v7);
  v5->val$count_ = a3;
LABEL_8:

  return v5;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$5 *sub_1000E8E90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (!v2 || !a2)
  {
    JreThrowNullPointerException();
  }

  v4 = [v2 sliceWithNSString:@"fixed-binary" withLong:*(a2 + 16) withLong:*(a2 + 32) * *(a2 + 44)];
  v5 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(*(a2 + 44));
  bytes = v5->bytes_;
  v7 = *(a2 + 44);
  v5->length_ = v7;
  v8 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__5 alloc];
  sub_1000EB9B4(v8, v4, v7, bytes, v5);

  return v8;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$6 *sub_1000E8F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000E9108(a1, a2, a3);
  v6 = *(a1 + 72);
  if (!v6 || !a3)
  {
    JreThrowNullPointerException();
  }

  v7 = [v6 sliceWithNSString:@"var-binary" withLong:*(a3 + 16) withLong:*(a3 + 48) - *(a3 + 16)];
  v8 = JavaLangMath_maxWithInt_withInt_(0, *(a3 + 44));
  v9 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(v8);
  bytes = v9->bytes_;
  v11 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__6 alloc];
  sub_1000EBBDC(&v11->super.super.super.isa, v5, v7, bytes, v9);

  return v11;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues *sub_1000E9034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E9248(a1, a2, a3);
  v7 = sub_1000E938C(a1, a2, a3);
  v8 = *(a1 + 72);
  if (!v8 || !a3)
  {
    JreThrowNullPointerException();
  }

  v9 = [v8 sliceWithNSString:@"terms" withLong:*(a3 + 16) withLong:*(a3 + 48) - *(a3 + 16)];
  v10 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues alloc];
  OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry_withOrgApacheLuceneUtilPackedMonotonicBlockPackedReader_withOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex_withOrgApacheLuceneStoreIndexInput_(v10, a3, v6, v7, v9);

  return v10;
}

id sub_1000E9108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_sync_enter(a1);
  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_15;
  }

  v8 = [v6 getWithId:*(a2 + 8)];
  if (!v8)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v10 = a3 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_15;
    }

    [v9 seekWithLong:*(a3 + 48)];
    v8 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(*(a1 + 72), *(a3 + 64), *(a3 + 68), *(a3 + 32) + 1, 0);
    if ((*(a1 + 112) & 1) == 0)
    {
      [*(a1 + 88) putWithId:*(a2 + 8) withId:v8];
      v11 = *(a1 + 64);
      if (v11 && v8)
      {
        [v11 addAndGetWithLong:{objc_msgSend(v8, "ramBytesUsed") + 4}];
        goto LABEL_14;
      }

LABEL_15:
      JreThrowNullPointerException();
    }
  }

LABEL_14:
  objc_sync_exit(a1);
  return v8;
}

id sub_1000E9248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_sync_enter(a1);
  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_15;
  }

  v8 = [v6 getWithId:*(a2 + 8)];
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = *(a1 + 72);
  if (!v9 || a3 == 0)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  [v9 seekWithLong:*(a3 + 48)];
  v8 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(*(a1 + 72), *(a3 + 64), *(a3 + 68), (*(a3 + 32) + 15) >> 4, 0);
  if ((*(a1 + 112) & 1) == 0)
  {
    [*(a1 + 88) putWithId:*(a2 + 8) withId:v8];
    v11 = *(a1 + 64);
    if (!v11 || !v8)
    {
      JreThrowNullPointerException();
    }

    [v11 addAndGetWithLong:{objc_msgSend(v8, "ramBytesUsed") + 4}];
  }

LABEL_14:
  objc_sync_exit(a1);
  return v8;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex *sub_1000E938C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_sync_enter(a1);
  v6 = *(a1 + 104);
  if (v6)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_14;
  }

  v8 = [v6 getWithId:*(a2 + 8)];
  if (v8)
  {
    goto LABEL_13;
  }

  v8 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex alloc];
  v9 = *(a1 + 72);
  if (!v9 || a3 == 0)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  [v9 seekWithLong:*(a3 + 56)];
  v11 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(*(a1 + 72), *(a3 + 64), *(a3 + 68), (*(a3 + 32) + 1023) >> 10, 0);
  JreStrongAssign(&v8->termAddresses_, v11);
  v12 = [*(a1 + 72) readVLong];
  v13 = new_OrgApacheLuceneUtilPagedBytes_initWithInt_(15);
  [(OrgApacheLuceneUtilPagedBytes *)v13 copy__WithOrgApacheLuceneStoreIndexInput:*(a1 + 72) withLong:v12];
  JreStrongAssign(&v8->terms_, [(OrgApacheLuceneUtilPagedBytes *)v13 freezeWithBoolean:1]);
  if ((*(a1 + 112) & 1) == 0)
  {
    [*(a1 + 104) putWithId:*(a2 + 8) withId:v8];
    v14 = *(a1 + 64);
    if (!v14)
    {
      JreThrowNullPointerException();
    }

    [v14 addAndGetWithLong:{-[OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex ramBytesUsed](v8, "ramBytesUsed")}];
  }

LABEL_13:
  objc_sync_exit(a1);
  return v8;
}

id sub_1000E9624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_sync_enter(a1);
  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_15;
  }

  v8 = [v6 getWithId:*(a2 + 8)];
  if (!v8)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v10 = a3 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_15;
    }

    [v9 seekWithLong:*(a3 + 16)];
    v8 = OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(*(a1 + 72), *(a3 + 40), *(a3 + 56), *(a3 + 48) + 1, 0);
    if ((*(a1 + 112) & 1) == 0)
    {
      [*(a1 + 96) putWithId:*(a2 + 8) withId:v8];
      v11 = *(a1 + 64);
      if (v11 && v8)
      {
        [v11 addAndGetWithLong:{objc_msgSend(v8, "ramBytesUsed") + 4}];
        goto LABEL_14;
      }

LABEL_15:
      JreThrowNullPointerException();
    }
  }

LABEL_14:
  objc_sync_exit(a1);
  return v8;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$10 *sub_1000E9A0C(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v5 = [v3 getWithId:*(a2 + 8)];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5[4];
  v7 = [a1 getBinaryWithOrgApacheLuceneIndexFieldInfo:a2];
  objc_opt_class();
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v8 = a1[5];
  if (!v8 || (v9 = [a1 getNumericWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry:{objc_msgSend(v8, "getWithId:", *(a2 + 8))}], (v10 = a1[6]) == 0))
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v11 = sub_1000E9624(a1, a2, [v10 getWithId:*(a2 + 8)]);
  v12 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__10 alloc];
  sub_1000EC7C4(v12, v9, v11, v7, v6);

  return v12;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_$11 *sub_1000E9B3C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_11;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v7 = [v4 getWithId:*(a2 + 8)];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7[4];
  v9 = [a1 getBinaryWithOrgApacheLuceneIndexFieldInfo:a2];
  objc_opt_class();
  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v10 = a1[5];
  if (!v10 || (v11 = [a1 getNumericWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_NumericEntry:{objc_msgSend(v10, "getWithId:", *(a2 + 8))}], !a3))
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v12 = v11;
  v14 = *(a3 + 16);
  v13 = *(a3 + 24);
  v15 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer__11 alloc];
  sub_1000ECD1C(v15, v12, v13, v14, v9, v8);

  return v15;
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer *new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v10 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer alloc];
  OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_initWithOrgApacheLuceneIndexSegmentReadState_withNSString_withNSString_withNSString_withNSString_(v10, a1, a2, a3, a4, a5);
  return v10;
}

id OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_BinaryEntry_withOrgApacheLuceneUtilPackedMonotonicBlockPackedReader_withOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_ReverseTermsIndex_withOrgApacheLuceneStoreIndexInput_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  OrgApacheLuceneIndexBinaryDocValues_init(a1, a2);
  if (!a2)
  {
    goto LABEL_8;
  }

  *(a1 + 24) = *(a2 + 44);
  *(a1 + 8) = *(a2 + 32);
  JreStrongAssign((a1 + 32), a3);
  if (!a3 || (*(a1 + 16) = [a3 size], JreStrongAssign((a1 + 40), a5), !a4) || (JreStrongAssign((a1 + 56), *(a4 + 16)), JreStrongAssign((a1 + 64), *(a4 + 8)), (v10 = *(a1 + 64)) == 0))
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  *(a1 + 72) = [v10 size];
  v11 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum alloc];
  OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_withOrgApacheLuceneStoreIndexInput_(v11, a1, a5);
  v12 = v11;

  return JreStrongAssign((a1 + 48), v12);
}

id OrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_CompressedBinaryTermsEnum_initWithOrgApacheLuceneCodecsLucene50Lucene50DocValuesProducer_CompressedBinaryDocValues_withOrgApacheLuceneStoreIndexInput_(uint64_t a1, int *a2, void *a3)
{
  JreStrongAssign((a1 + 16), a2);
  OrgApacheLuceneIndexTermsEnum_init(a1);
  *(a1 + 24) = -1;
  JreStrongAssignAndConsume((a1 + 48), [IOSIntArray newArrayWithLength:16]);
  JreStrongAssignAndConsume((a1 + 56), [IOSByteArray newArrayWithLength:31]);
  v6 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(a2[6]);
  JreStrongAssignAndConsume((a1 + 64), v6);
  v7 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(a2[6]);
  JreStrongAssignAndConsume((a1 + 72), v7);
  v8 = new_OrgApacheLuceneUtilBytesRef_init();
  JreStrongAssignAndConsume((a1 + 80), v8);
  JreStrongAssign((a1 + 40), a3);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  return [a3 seekWithLong:0];
}

id sub_1000EA7B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2 || (v3 = [v2 readVInt], (v4 = *(a1 + 72)) == 0) || (*(v4 + 20) = v3, objc_msgSend(*(a1 + 40), "readBytesWithByteArray:withInt:withInt:", *(*(a1 + 72) + 8), 0, *(*(a1 + 72) + 20)), objc_msgSend(*(a1 + 40), "readBytesWithByteArray:withInt:withInt:", *(a1 + 56), 0, 15), (v5 = *(a1 + 56)) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = *(v5 + 8);
  if (v6 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 0);
  }

  if (*(v5 + 12) == 255)
  {
    sub_1000EA9F8(a1);
  }

  else
  {
    sub_1000EA8D8(a1);
  }

  result = [*(a1 + 40) getFilePointer];
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000EA8D8(uint64_t result)
{
  v1 = *(result + 48);
  if (!v1)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v2 = result;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = v3 + 1;
    if (v3 + 1 >= *(v1 + 8))
    {
      return result;
    }

    v6 = *(v2 + 56);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v5 > v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v3);
      }

      v8 = *(v6 + 12 + v3);
      v9 = *(v2 + 48);
      result = *(v9 + 8);
      if (v5 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, (v3 + 1));
      }

      v4 += v8 + 2;
      *(v9 + 12 + 4 * v3 + 4) = v4;
      v1 = *(v2 + 48);
      ++v3;
      if (v1)
      {
        continue;
      }
    }

    goto LABEL_12;
  }
}

uint64_t sub_1000EA9F8(void *a1)
{
  v2 = a1[5];
  if (!v2 || (result = [v2 readBytesWithByteArray:a1[7] withInt:15 withInt:16], (v4 = a1[6]) == 0))
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v5 = 0;
  v6 = 1;
  v7 = 0x200000000;
  v8 = 1;
  while (v6 < *(v4 + 8))
  {
    v9 = a1[7];
    if (v9)
    {
      v10 = *(v9 + 8);
      if ((v8 & 0x80000000) != 0 || v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      v11 = (v8 + 1);
      v12 = *(v9 + 12 + v8);
      if ((v11 & 0x80000000) != 0 || v10 <= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v11);
      }

      v13 = a1[6];
      result = *(v13 + 8);
      if (v6 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v6);
      }

      v5 += (v12 << 8) + *(a1[7] + 12 + (v7 >> 32)) + 2;
      *(v13 + 12 + 4 * v6++) = v5;
      v4 = a1[6];
      v8 = (v8 + 2);
      v7 += 0x200000000;
      if (v4)
      {
        continue;
      }
    }

    goto LABEL_17;
  }

  return result;
}

id sub_1000EABC4(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1 || (v2 = *(a1 + 64)) == 0)
  {
    JreThrowNullPointerException();
  }

  *(v2 + 20) = *(v1 + 20);
  v3 = *(a1 + 72);
  v4 = *(v3 + 16);
  v5 = *(a1 + 64);
  v6 = *(v5 + 8);
  v7 = *(v5 + 20);
  v8 = *(v3 + 8);

  return JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v8, v4, v6, 0, v7);
}

id sub_1000EAC6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!v3 || (v5 = [v3 readByte], (v6 = *(a1 + 72)) == 0) || (v7 = *(a1 + 64)) == 0 || (v8 = v5, JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(v6 + 8), *(v6 + 16), *(v7 + 8), 0, v5), (v9 = *(a1 + 48)) == 0))
  {
    JreThrowNullPointerException();
  }

  v10 = *(v9 + 8);
  if ((a2 & 0x80000000) != 0 || v10 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, a2);
  }

  v11 = *(v9 + 12 + 4 * a2);
  v12 = (a2 - 1);
  if (v12 < 0 || v12 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, v12);
  }

  v13 = (v11 + ~*(*(a1 + 48) + 12 + 4 * v12));
  result = [*(a1 + 40) readBytesWithByteArray:*(*(a1 + 64) + 8) withInt:v8 withInt:v13];
  *(*(a1 + 64) + 20) = v13 + v8;
  return result;
}

uint64_t sub_1000EB804(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 16), a3);

  return OrgApacheLuceneUtilLongValues_init(a1);
}

uint64_t sub_1000EB9B4(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  JreStrongAssign((a1 + 24), a4);
  JreStrongAssign((a1 + 32), a5);

  return OrgApacheLuceneIndexBinaryDocValues_init(a1, v9);
}

uint64_t sub_1000EBBDC(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);
  JreStrongAssign(a1 + 3, a4);
  JreStrongAssign(a1 + 4, a5);

  return OrgApacheLuceneIndexBinaryDocValues_init(a1, v9);
}

void *sub_1000EBF14(uint64_t a1, void *a2, void *a3, int a4)
{
  JreStrongAssign((a1 + 16), a2);
  JreStrongAssign((a1 + 24), a3);
  *(a1 + 32) = a4;

  return OrgApacheLuceneIndexSortedDocValues_init(a1, v7);
}

uint64_t sub_1000EC0EC(uint64_t a1, void *a2, void *a3)
{
  JreStrongAssign((a1 + 24), a2);
  JreStrongAssign((a1 + 32), a3);

  return OrgApacheLuceneIndexSortedNumericDocValues_init(a1);
}

uint64_t sub_1000EC374(id *a1, void *a2, void *a3, void *a4)
{
  JreStrongAssign(a1 + 2, a2);
  JreStrongAssign(a1 + 3, a3);
  JreStrongAssign(a1 + 4, a4);

  return OrgApacheLuceneIndexSortedNumericDocValues_init(a1);
}

uint64_t sub_1000EC7C4(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  JreStrongAssign((a1 + 32), a2);
  JreStrongAssign((a1 + 40), a3);
  JreStrongAssign((a1 + 48), a4);
  *(a1 + 56) = a5;

  return OrgApacheLuceneIndexRandomAccessOrds_init(a1, v9);
}

uint64_t sub_1000ECD1C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  JreStrongAssign((a1 + 24), a2);
  JreStrongAssign((a1 + 32), a3);
  JreStrongAssign((a1 + 40), a4);
  JreStrongAssign((a1 + 48), a5);
  *(a1 + 56) = a6;

  return OrgApacheLuceneIndexRandomAccessOrds_init(a1, v11);
}

void sub_1000ED348(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_end_catch();
  _Unwind_Resume(a1);
}

void sub_1000ED368(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  JUMPOUT(0x1000ED1D4);
}

OrgApacheLuceneCodecsLucene50Lucene50LiveDocsFormat *new_OrgApacheLuceneCodecsLucene50Lucene50LiveDocsFormat_init()
{
  v0 = [OrgApacheLuceneCodecsLucene50Lucene50LiveDocsFormat alloc];
  OrgApacheLuceneCodecsLiveDocsFormat_init(v0, v1);
  return v0;
}

id OrgApacheLuceneCodecsCompressingMatchingReaders_initWithOrgApacheLuceneIndexMergeState_(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_32;
  }

  v3 = *(a2 + 96);
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = *(v3 + 8);
  JreStrongAssignAndConsume((a1 + 8), [IOSBooleanArray newArrayWithLength:v4]);
  if (v4 >= 1)
  {
    v38 = 0;
    v5 = 0;
    while (1)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v6 = *(a2 + 56);
      if (!v6)
      {
        goto LABEL_32;
      }

      v7 = *(v6 + 8);
      if (v5 >= v7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v7, v5);
      }

      v8 = *(v6 + 24 + 8 * v5);
      if (!v8)
      {
        goto LABEL_32;
      }

      v9 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v40;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v40 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(a2 + 16);
            if (!v13)
            {
              goto LABEL_32;
            }

            v14 = *(*(&v39 + 1) + 8 * i);
            if (!v14)
            {
              goto LABEL_32;
            }

            v15 = [v13 fieldInfoWithInt:*(v14 + 16)];
            if (!v15)
            {
              goto LABEL_22;
            }

            v16 = v15[1];
            if (!v16)
            {
              goto LABEL_32;
            }

            if (![v16 isEqual:*(v14 + 8)])
            {
              goto LABEL_22;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v10);
      }

      v17 = *(a1 + 8);
      v18 = *(v17 + 8);
      if (v5 >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, v5);
      }

      *(v17 + 12 + v5) = 1;
      ++v38;
LABEL_22:
      v5 = (v5 + 1);
      if (v5 == v4)
      {
        goto LABEL_27;
      }
    }
  }

  v38 = 0;
LABEL_27:
  *(a1 + 16) = v38;
  v19 = *(a2 + 104);
  if (!v19)
  {
LABEL_32:
    JreThrowNullPointerException();
  }

  result = [v19 isEnabledWithNSString:@"SM"];
  if (result)
  {
    v36 = *(a1 + 16);
    result = [*(a2 + 104) messageWithNSString:@"SM" withNSString:{JreStrcat("$I$I", v21, v22, v23, v24, v25, v26, v27, @"merge store matchedCount="}];
    v35 = (v4 - *(a1 + 16));
    if (v35)
    {
      return [*(a2 + 104) messageWithNSString:@"SM" withNSString:{JreStrcat("I$", v28, v29, v30, v31, v32, v33, v34, v35)}];
    }
  }

  return result;
}

OrgApacheLuceneCodecsCompressingMatchingReaders *new_OrgApacheLuceneCodecsCompressingMatchingReaders_initWithOrgApacheLuceneIndexMergeState_(uint64_t a1)
{
  v2 = [OrgApacheLuceneCodecsCompressingMatchingReaders alloc];
  OrgApacheLuceneCodecsCompressingMatchingReaders_initWithOrgApacheLuceneIndexMergeState_(v2, a1);
  return v2;
}

id OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(uint64_t a1, void *a2, void *a3, void *a4, float a5)
{
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2);
  *(a1 + 32) = a5;
  v9 = OrgApacheLuceneSearchConjunctionDISI_intersectWithJavaUtilList_(a3);
  JreStrongAssign((a1 + 16), v9);
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  v10 = [a4 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", objc_msgSend(a4, "size"), OrgApacheLuceneSearchScorer_class_())}];

  return JreStrongAssign((a1 + 24), v10);
}

OrgApacheLuceneSearchConjunctionScorer *new_OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(void *a1, void *a2, void *a3, float a4)
{
  v8 = [OrgApacheLuceneSearchConjunctionScorer alloc];
  OrgApacheLuceneSearchConjunctionScorer_initWithOrgApacheLuceneSearchWeight_withJavaUtilList_withJavaUtilList_withFloat_(v8, a1, a2, a3, a4);
  return v8;
}

OrgApacheLuceneUtilIntsRefBuilder *new_OrgApacheLuceneUtilIntsRefBuilder_init()
{
  v0 = [OrgApacheLuceneUtilIntsRefBuilder alloc];
  v1 = new_OrgApacheLuceneUtilIntsRef_init();
  JreStrongAssignAndConsume(&v0->ref_, v1);
  return v0;
}

OrgApacheLuceneUtilPackedBulkOperationPacked12 *new_OrgApacheLuceneUtilPackedBulkOperationPacked12_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked12 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 12);
  return v0;
}

OrgApacheLuceneStoreMergeInfo *new_OrgApacheLuceneStoreMergeInfo_initWithInt_withLong_withBoolean_withInt_(int a1, int64_t a2, BOOL a3, int a4)
{
  result = [OrgApacheLuceneStoreMergeInfo alloc];
  result->totalMaxDoc_ = a1;
  result->estimatedMergeBytes_ = a2;
  result->isExternal_ = a3;
  result->mergeMaxNumSegments_ = a4;
  return result;
}

OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream *new_OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream_initWithJavaUtilList_(void *a1)
{
  v2 = [OrgLukhnosPortmobileFileDirectoryStream_SimpleDirectoryStream alloc];
  JreStrongAssign(&v2->paths_, a1);
  return v2;
}

OrgApacheLuceneSearchPhraseQueue *new_OrgApacheLuceneSearchPhraseQueue_initWithInt_(uint64_t a1)
{
  v2 = [OrgApacheLuceneSearchPhraseQueue alloc];
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(v2, a1, v3, v4, v5, v6, v7, v8);
  return v2;
}

void *OrgApacheLuceneUtilPackedDirect32_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(a1, a2, 32);
  v4 = [IOSIntArray newArrayWithLength:v2];

  return JreStrongAssignAndConsume((a1 + 16), v4);
}

id OrgApacheLuceneUtilPackedDirect32_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  OrgApacheLuceneUtilPackedDirect32_initWithInt_(a1, a4);
  if (a4 >= 1)
  {
    if (a3)
    {
      v7 = 0;
      while (1)
      {
        v8 = [a3 readInt];
        v9 = *(a1 + 16);
        if (!v9)
        {
          break;
        }

        v10 = v8;
        v11 = *(v9 + 8);
        if (v7 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v7);
        }

        *(v9 + 12 + 4 * v7++) = v10;
        if (a4 == v7)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

LABEL_9:
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_)
  {
    goto LABEL_16;
  }

  result = [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_ byteCountWithInt:a2 withInt:a4 withInt:32];
  v13 = result - 4 * a4;
  if (v13 >= 1)
  {
    if (!a3)
    {
      goto LABEL_16;
    }

    do
    {
      result = [a3 readByte];
      --v13;
    }

    while (v13);
  }

  return result;
}

OrgApacheLuceneUtilPackedDirect32 *new_OrgApacheLuceneUtilPackedDirect32_initWithInt_(uint64_t a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirect32 alloc];
  OrgApacheLuceneUtilPackedDirect32_initWithInt_(v2, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirect32 *new_OrgApacheLuceneUtilPackedDirect32_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(unsigned int a1, void *a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneUtilPackedDirect32 alloc];
  OrgApacheLuceneUtilPackedDirect32_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(v6, a1, a2, a3);
  return v6;
}

uint64_t OrgApacheLuceneCodecsTermVectorsReader_class_()
{
  if (qword_1005545D8 != -1)
  {
    sub_1000F008C();
  }

  return qword_1005545D0;
}

OrgApacheLuceneUtilFixedBitSet *OrgApacheLuceneUtilFixedBitSet_ensureCapacityWithOrgApacheLuceneUtilFixedBitSet_withInt_(_DWORD *a1, int a2)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilFixedBitSet__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1000F2080();
    if (!a1)
    {
      goto LABEL_15;
    }
  }

  if (a1[4] > a2)
  {
    return a1;
  }

  if ((atomic_load_explicit(&OrgApacheLuceneUtilFixedBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000F2080();
  }

  v5 = [a1 getBits];
  if (!v5)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v12 = v5;
  v13 = (a2 - 1) >> 6;
  v14 = v5[2];
  if (v13 + 1 >= v14)
  {
    v15 = OrgApacheLuceneUtilArrayUtil_growWithLongArray_withInt_(v5, v13 + 2, v6, v7, v8, v9, v10, v11);
    if (v15)
    {
      v12 = v15;
      v14 = v15[2];
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_11:
  v16 = v14 << 6;
  v17 = [OrgApacheLuceneUtilFixedBitSet alloc];
  OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(v17, v12, v16);

  return v17;
}

uint64_t OrgApacheLuceneUtilFixedBitSet_bits2wordsWithInt_(int a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilFixedBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000F2080();
  }

  return (((a1 - 1) >> 6) + 1);
}

uint64_t OrgApacheLuceneUtilFixedBitSet_intersectionCountWithOrgApacheLuceneUtilFixedBitSet_withOrgApacheLuceneUtilFixedBitSet_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilFixedBitSet__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000F2080();
    if (!a1)
    {
LABEL_8:
      JreThrowNullPointerException();
    }
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = JavaLangMath_minWithInt_withInt_(*(a1 + 20), *(a2 + 20));

  return OrgApacheLuceneUtilBitUtil_pop_intersectWithLongArray_withLongArray_withInt_withInt_(v4, v5, 0, v6);
}

uint64_t OrgApacheLuceneUtilFixedBitSet_unionCountWithOrgApacheLuceneUtilFixedBitSet_withOrgApacheLuceneUtilFixedBitSet_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilFixedBitSet__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1000F2080();
    if (!a1)
    {
LABEL_11:
      JreThrowNullPointerException();
    }
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = JavaLangMath_minWithInt_withInt_(*(a1 + 20), *(a2 + 20));
  v7 = OrgApacheLuceneUtilBitUtil_pop_unionWithLongArray_withLongArray_withInt_withInt_(v4, v5, 0, v6);
  v8 = *(a1 + 20);
  v9 = *(a2 + 20);
  v10 = v8 - v9;
  if (v8 < v9)
  {
    v11 = *(a2 + 8);
    v10 = v9 - v8;
    v9 = *(a1 + 20);
LABEL_8:
    v7 += OrgApacheLuceneUtilBitUtil_pop_arrayWithLongArray_withInt_withInt_(v11, v9, v10);
    return v7;
  }

  if (v8 > v9)
  {
    v11 = *(a1 + 8);
    goto LABEL_8;
  }

  return v7;
}

uint64_t OrgApacheLuceneUtilFixedBitSet_andNotCountWithOrgApacheLuceneUtilFixedBitSet_withOrgApacheLuceneUtilFixedBitSet_(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilFixedBitSet__initialized, memory_order_acquire))
  {
    if (!a1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000F2080();
    if (!a1)
    {
LABEL_8:
      JreThrowNullPointerException();
    }
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = JavaLangMath_minWithInt_withInt_(*(a1 + 20), *(a2 + 20));
  v7 = OrgApacheLuceneUtilBitUtil_pop_andnotWithLongArray_withLongArray_withInt_withInt_(v4, v5, 0, v6);
  v8 = *(a1 + 20);
  v9 = *(a2 + 20);
  if (v8 > v9)
  {
    v7 += OrgApacheLuceneUtilBitUtil_pop_arrayWithLongArray_withInt_withInt_(*(a1 + 8), v9, v8 - v9);
  }

  return v7;
}

void *OrgApacheLuceneUtilFixedBitSet_initWithInt_(uint64_t a1, int a2)
{
  OrgApacheLuceneUtilBitSet_init();
  *(a1 + 16) = a2;
  if ((atomic_load_explicit(&OrgApacheLuceneUtilFixedBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000F2080();
  }

  result = JreStrongAssignAndConsume((a1 + 8), [IOSLongArray newArrayWithLength:((a2 - 1) >> 6) + 1]);
  *(a1 + 20) = *(*(a1 + 8) + 8);
  return result;
}

id OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(uint64_t a1, _DWORD *a2, int a3)
{
  OrgApacheLuceneUtilBitSet_init();
  if ((atomic_load_explicit(&OrgApacheLuceneUtilFixedBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000F2080();
  }

  *(a1 + 20) = ((a3 - 1) >> 6) + 1;
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  if (*(a1 + 20) > a2[2])
  {
    v14 = JreStrcat("$I$", v6, v7, v8, v9, v10, v11, v12, @"The given long array is too small  to hold ");
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  *(a1 + 16) = a3;

  return JreStrongAssign((a1 + 8), a2);
}

uint64_t sub_1000F0E4C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  result = JavaLangMath_minWithInt_withInt_(*(a1 + 20), a3);
  v6 = (result - 1);
  if (result - 1 >= 0)
  {
    if (a2)
    {
      while (1)
      {
        v7 = *(a2 + 8);
        if (v6 >= v7)
        {
          IOSArray_throwOutOfBoundsWithMsg(v7, v6);
        }

        if (!v4)
        {
          break;
        }

        result = *(v4 + 8);
        if (v6 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v6);
        }

        *(v4 + 16 + 8 * v6) |= *(a2 + 16 + 8 * v6);
        if (v6-- <= 0)
        {
          return result;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return result;
}

uint64_t sub_1000F0F78(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  result = JavaLangMath_minWithInt_withInt_(*(a1 + 20), a3);
  v6 = (result - 1);
  if (result - 1 >= 0)
  {
    if (a2)
    {
      while (1)
      {
        v7 = *(a2 + 8);
        if (v6 >= v7)
        {
          IOSArray_throwOutOfBoundsWithMsg(v7, v6);
        }

        if (!v4)
        {
          break;
        }

        result = *(v4 + 8);
        if (v6 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v6);
        }

        *(v4 + 16 + 8 * v6) ^= *(a2 + 16 + 8 * v6);
        if (v6-- <= 0)
        {
          return result;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return result;
}

uint64_t sub_1000F12E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  result = JavaLangMath_minWithInt_withInt_(*(a1 + 20), a3);
  v12 = (result - 1);
  if (result - 1 >= 0)
  {
    if (a2)
    {
      while (1)
      {
        v13 = *(a2 + 8);
        if (v12 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v12);
        }

        if (!v6)
        {
          break;
        }

        result = *(v6 + 8);
        if (v12 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v12);
        }

        *(v6 + 16 + 8 * v12) &= *(a2 + 16 + 8 * v12);
        if (v12-- <= 0)
        {
          goto LABEL_11;
        }
      }
    }

    JreThrowNullPointerException();
  }

LABEL_11:
  v15 = *(a1 + 20);
  if (v15 > a3)
  {

    return JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(v6, a3, v15, 0, v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1000F1508(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  result = JavaLangMath_minWithInt_withInt_(*(a1 + 20), a3);
  v6 = (result - 1);
  if (result - 1 >= 0)
  {
    if (a2)
    {
      while (1)
      {
        v7 = *(a2 + 8);
        if (v6 >= v7)
        {
          IOSArray_throwOutOfBoundsWithMsg(v7, v6);
        }

        if (!v4)
        {
          break;
        }

        result = *(v4 + 8);
        if (v6 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v6);
        }

        *(v4 + 16 + 8 * v6) &= ~*(a2 + 16 + 8 * v6);
        if (v6-- <= 0)
        {
          return result;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return result;
}

OrgApacheLuceneUtilFixedBitSet *new_OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(_DWORD *a1, int a2)
{
  v4 = [OrgApacheLuceneUtilFixedBitSet alloc];
  OrgApacheLuceneUtilFixedBitSet_initWithLongArray_withInt_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneUtilFixedBitSet *new_OrgApacheLuceneUtilFixedBitSet_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneUtilFixedBitSet alloc];
  OrgApacheLuceneUtilFixedBitSet_initWithInt_(v2, a1);
  return v2;
}

uint64_t OrgApacheLuceneUtilFixedBitSet_class_()
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilFixedBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000F2080();
  }

  if (qword_1005545F0 != -1)
  {
    sub_1000F208C();
  }

  return qword_1005545E8;
}

id OrgApacheLuceneIndexMappingMultiPostingsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_(uint64_t a1, void *a2, void *a3)
{
  OrgApacheLuceneIndexPostingsEnum_init(a1, a2);
  *(a1 + 44) = -1;
  JreStrongAssign((a1 + 56), a2);

  return JreStrongAssign((a1 + 72), a3);
}

OrgApacheLuceneIndexMappingMultiPostingsEnum *new_OrgApacheLuceneIndexMappingMultiPostingsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexMappingMultiPostingsEnum alloc];
  OrgApacheLuceneIndexMappingMultiPostingsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_(v4, a1, a2);
  return v4;
}

id OrgApacheLuceneUtilAttributeSource_init(id *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilAttributeFactory__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100049134();
  }

  v2 = OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY_;

  return OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(a1, v2);
}

id OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeSource_(id *a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"input AttributeSource must not be null");
    objc_exception_throw(v6);
  }

  JreStrongAssign(a1 + 1, *(a2 + 8));
  JreStrongAssign(a1 + 2, *(a2 + 16));
  JreStrongAssign(a1 + 3, *(a2 + 24));
  v4 = *(a2 + 32);

  return JreStrongAssign(a1 + 4, v4);
}

id OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(id *a1, void *a2)
{
  v4 = new_JavaUtilLinkedHashMap_init();
  JreStrongAssignAndConsume(a1 + 1, v4);
  v5 = new_JavaUtilLinkedHashMap_init();
  JreStrongAssignAndConsume(a1 + 2, v5);
  if (qword_100554608 != -1)
  {
    sub_1000F3DC4();
  }

  JreStrongAssignAndConsume(a1 + 3, [IOSObjectArray newArrayWithLength:1 type:qword_100554600]);

  return JreStrongAssign(a1 + 4, a2);
}

id OrgApacheLuceneUtilAttributeSource_getAttributeInterfacesWithIOSClass_(uint64_t a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilAttributeSource__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000F3DD8();
  }

  v2 = qword_1005545F8;
  if (!qword_1005545F8)
  {
    JreThrowNullPointerException();
  }

  return [v2 getWithIOSClass:a1];
}

char *sub_1000F2F1C(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v4 = [a2 getClass];
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_12;
  }

  result = [v5 containsKeyWithId:v4];
  if (result)
  {
    return result;
  }

  result = OrgApacheLuceneUtilAttributeSource_getAttributeInterfacesWithIOSClass_(v4);
  if (!result)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v7 = (result + 24);
  v8 = &result[8 * *(result + 2) + 24];
  while (v7 < v8)
  {
    v9 = *(a1 + 8);
    if (!v9)
    {
      goto LABEL_12;
    }

    v11 = *v7++;
    v10 = v11;
    result = [v9 containsKeyWithId:v11];
    if ((result & 1) == 0)
    {
      v12 = *(a1 + 24);
      if (!v12)
      {
        goto LABEL_12;
      }

      IOSObjectArray_Set(v12, 0, 0);
      [*(a1 + 8) putWithId:v10 withId:a2];
      result = [*(a1 + 16) putWithId:v4 withId:a2];
    }
  }

  return result;
}

NSString *sub_1000F3458(void *a1, BOOL a2)
{
  v4 = new_JavaLangStringBuilder_init();
  v5 = [OrgApacheLuceneUtilAttributeSource__3 alloc];
  JreStrongAssign(&v5->val$buffer_, v4);
  v5->val$prependAttClass_ = a2;
  sub_1000F34E0(a1, v5);

  return [(JavaLangStringBuilder *)v4 description];
}

id *sub_1000F34E0(void *a1, uint64_t a2)
{
  result = [OrgApacheLuceneUtilAttributeSource getCurrentState]_0(a1);
  if (result)
  {
    v4 = result;
    do
    {
      v5 = v4[1];
      if (!v5)
      {
        JreThrowNullPointerException();
      }

      result = [v5 reflectWithWithOrgApacheLuceneUtilAttributeReflector:a2];
      v4 = v4[2];
    }

    while (v4);
  }

  return result;
}

OrgApacheLuceneUtilAttributeSource *new_OrgApacheLuceneUtilAttributeSource_init()
{
  v0 = [OrgApacheLuceneUtilAttributeSource alloc];
  OrgApacheLuceneUtilAttributeSource_init(&v0->super.isa);
  return v0;
}

unint64_t OrgApacheLuceneUtilPackedBlockPackedReaderIterator_readVLongWithOrgApacheLuceneStoreDataInput_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 readByte];
  if ((v2 & 0x80000000) == 0)
  {
    return v2;
  }

  v4 = v2 & 0x7F;
  v5 = [a1 readByte];
  v3 = v4 & 0xFFFFFFFFFFFFC07FLL | ((v5 & 0x7F) << 7);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = [a1 readByte];
    v3 = v3 & 0xFFFFFFFFFFE03FFFLL | ((v6 & 0x7F) << 14);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = [a1 readByte];
      v3 = v3 & 0xFFFFFFFFF01FFFFFLL | ((v7 & 0x7F) << 21);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = [a1 readByte];
        v3 = v3 & 0xFFFFFFF80FFFFFFFLL | ((v8 & 0x7F) << 28);
        if ((v8 & 0x80000000) != 0)
        {
          v9 = [a1 readByte];
          v3 |= (v9 & 0x7F) << 35;
          if ((v9 & 0x80000000) != 0)
          {
            v10 = [a1 readByte];
            v3 |= (v10 & 0x7F) << 42;
            if ((v10 & 0x80000000) != 0)
            {
              v11 = [a1 readByte];
              v3 |= (v11 & 0x7F) << 49;
              if ((v11 & 0x80000000) != 0)
              {
                v3 |= [a1 readByte] << 56;
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

id OrgApacheLuceneUtilPackedBlockPackedReaderIterator_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withLong_(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  OrgApacheLuceneUtilPackedPackedInts_checkBlockSizeWithInt_withInt_withInt_(a4, 64, 0x8000000, a4, a5, a6, a7, a8);
  *(a1 + 16) = a3;
  *(a1 + 32) = v9;
  JreStrongAssignAndConsume((a1 + 40), [IOSLongArray newArrayWithLength:v9]);
  v13 = new_OrgApacheLuceneUtilLongsRef_initWithLongArray_withInt_withInt_(*(a1 + 40), 0, 0);
  JreStrongAssignAndConsume((a1 + 48), v13);

  return [a1 resetWithOrgApacheLuceneStoreDataInput:a2 withLong:a5];
}

uint64_t sub_1000F4138(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v6 = *(a1 + 8);
    objc_opt_class();
    if (v6)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v7 = [v6 getFilePointer] + a2;

      return [v6 seekWithLong:v7];
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  v8 = (a1 + 56);
  if (!*(a1 + 56))
  {
    result = JreStrongAssignAndConsume((a1 + 56), [IOSByteArray newArrayWithLength:*(a1 + 32)]);
  }

  if (a2 >= 1)
  {
    v9 = 0;
    while (*v8)
    {
      v10 = JavaLangMath_minWithLong_withLong_(*(*v8 + 8), a2 - v9);
      v11 = *(a1 + 8);
      if (!v11)
      {
        break;
      }

      result = [v11 readBytesWithByteArray:*v8 withInt:0 withInt:v10];
      v9 += v10;
      if (v9 >= a2)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  return result;
}

OrgApacheLuceneUtilPackedBlockPackedReaderIterator *new_OrgApacheLuceneUtilPackedBlockPackedReaderIterator_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withLong_(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = [OrgApacheLuceneUtilPackedBlockPackedReaderIterator alloc];
  OrgApacheLuceneUtilPackedBlockPackedReaderIterator_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withLong_(v8, a1, a2, a3, a4, v9, v10, v11);
  return v8;
}

uint64_t OrgApacheLuceneUtilPackedBulkOperation_ofWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_(void *a1, int a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedBulkOperation__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000F4EF0();
  }

  v4 = [a1 ordinal];
  if (v4 == 1)
  {
    v5 = qword_100554618;
  }

  else
  {
    if (v4)
    {
      v9 = new_JavaLangAssertionError_init();
      objc_exception_throw(v9);
    }

    v5 = qword_100554610;
  }

  v6 = *(v5 + 8);
  v7 = (a2 - 1);
  if (v7 < 0 || v7 >= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, v7);
  }

  return *(v5 + 24 + 8 * v7);
}

uint64_t OrgApacheLuceneUtilPackedBulkOperation_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedBulkOperation__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000F4EF0();
  }

  if (qword_100554628 != -1)
  {
    sub_1000F4EFC();
  }

  return qword_100554620;
}

OrgApacheLuceneUtilPackedBulkOperationPacked17 *new_OrgApacheLuceneUtilPackedBulkOperationPacked17_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked17 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 17);
  return v0;
}

uint64_t OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withOrgApacheLuceneStoreIOContext_(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ([*(a3 + 8) ordinal])
  {
    v5 = 1024;
  }

  else
  {
    v5 = 4096;
  }

  return OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(a1, a2, v5);
}

uint64_t OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(uint64_t a1, void *a2, uint64_t a3)
{
  OrgApacheLuceneStoreIndexInput_initWithNSString_(a1, a2);
  *(a1 + 32) = 1024;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  result = sub_1000F9684(a3, v5, v6, v7, v8, v9, v10, v11);
  *(a1 + 32) = a3;
  return result;
}

uint64_t sub_1000F9684(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result <= 7)
  {
    v8 = JreStrcat("$IC", a2, a3, a4, a5, a6, a7, a8, @"bufferSize must be at least MIN_BUFFER_SIZE (got ");
    v9 = new_JavaLangIllegalArgumentException_initWithNSString_(v8);
    objc_exception_throw(v9);
  }

  return result;
}

id *sub_1000F970C(id *result, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a4;
  v6 = a3;
  v8 = result;
  v9 = *(result + 13);
  v10 = (*(result + 12) - v9);
  v11 = (a4 - v10);
  if (a4 <= v10)
  {
    if (a4 >= 1)
    {
      result = JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(result[3], v9, a2, a3, a4);
      LODWORD(v9) = *(v8 + 52);
    }

    *(v8 + 52) = v9 + v5;
  }

  else
  {
    if (v10 >= 1)
    {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(result[3], v9, a2, a3, v10);
      v6 = (v10 + v6);
      *(v8 + 52) += v10;
      v5 = v11;
    }

    if (a5 && v5 < *(v8 + 32))
    {
      [OrgApacheLuceneStoreBufferedIndexInput refill]_0(v8);
      v13 = *(v8 + 48);
      v14 = *(v8 + 24);
      if (v13 >= v5)
      {
        result = JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v14, 0, a2, v6, v5);
        *(v8 + 52) = v5;
        return result;
      }

      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v14, 0, a2, v6, v13);
LABEL_14:
      v23 = JreStrcat("$@", v16, v17, v18, v19, v20, v21, v22, @"read past EOF: ");
      v24 = new_JavaIoEOFException_initWithNSString_(v23);
      objc_exception_throw(v24);
    }

    v15 = *(v8 + 40) + v5 + *(v8 + 52);
    if (v15 > [v8 length])
    {
      goto LABEL_14;
    }

    result = [v8 readInternalWithByteArray:a2 withInt:v6 withInt:v5];
    *(v8 + 40) = v15;
    *(v8 + 52) = 0;
    *(v8 + 48) = 0;
  }

  return result;
}

OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput *OrgApacheLuceneStoreBufferedIndexInput_wrapWithNSString_withOrgApacheLuceneStoreIndexInput_withLong_withLong_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [OrgApacheLuceneStoreBufferedIndexInput_SlicedIndexInput alloc];
  sub_1000FAF68(v8, a1, a2, a3, a4);

  return v8;
}

id sub_1000FAF68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    if (a3)
    {
      v17 = [a3 description];
      goto LABEL_6;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!a3)
  {
    goto LABEL_9;
  }

  v9 = [a3 description];
  v17 = JreStrcat("$$$C", v10, v11, v12, v13, v14, v15, v16, v9);
LABEL_6:
  OrgApacheLuceneStoreBufferedIndexInput_initWithNSString_withInt_(a1, v17, 1024);
  if ((a5 | a4) < 0 || a5 + a4 > [a3 length])
  {
    v26 = JreStrcat("$$$@", v18, v19, v20, v21, v22, v23, v24, @"slice() ");
    v27 = new_JavaLangIllegalArgumentException_initWithNSString_(v26);
    objc_exception_throw(v27);
  }

  result = JreStrongAssign((a1 + 56), [a3 clone]);
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  return result;
}

id OrgApacheLuceneUtilCharsRef_initWithNSString_(uint64_t a1, void *a2)
{
  if (!a2 || (result = JreStrongAssign((a1 + 8), [a2 toCharArray]), *(a1 + 16) = 0, (v4 = *(a1 + 8)) == 0))
  {
    JreThrowNullPointerException();
  }

  *(a1 + 20) = *(v4 + 8);
  return result;
}

OrgApacheLuceneUtilCharsRef *OrgApacheLuceneUtilCharsRef_deepCopyOfWithOrgApacheLuceneUtilCharsRef_(uint64_t a1)
{
  if (atomic_load_explicit(OrgApacheLuceneUtilCharsRef__initialized, memory_order_acquire))
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  sub_1000FBE58();
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = JavaUtilArrays_copyOfRangeWithCharArray_withInt_withInt_(*(a1 + 8), *(a1 + 16), *(a1 + 20) + *(a1 + 16));
  v3 = *(a1 + 20);
  v4 = [OrgApacheLuceneUtilCharsRef alloc];
  JreStrongAssign(&v4->chars_, v2);
  v4->offset_ = 0;
  v4->length_ = v3;

  return v4;
}

OrgApacheLuceneUtilCharsRef *new_OrgApacheLuceneUtilCharsRef_init()
{
  v0 = [OrgApacheLuceneUtilCharsRef alloc];
  JreStrongAssign(&v0->chars_, OrgApacheLuceneUtilCharsRef_EMPTY_CHARS_);
  *&v0->offset_ = 0;
  return v0;
}

uint64_t OrgApacheLuceneUtilCharsRef_getUTF16SortedAsUTF8Comparator()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilCharsRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000FBE58();
  }

  return qword_100554630;
}

id OrgApacheLuceneIndexSegmentCommitInfo_initWithOrgApacheLuceneIndexSegmentInfo_withInt_withLong_withLong_withLong_(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 72), v12);
  v13 = new_JavaUtilHashSet_init();
  JreStrongAssignAndConsume((a1 + 80), v13);
  v14 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 88), v14);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, (a1 + 96));
  result = JreStrongAssign((a1 + 8), a2);
  *(a1 + 16) = a3;
  v16 = a4 + 1;
  if (a4 == -1)
  {
    v16 = 1;
  }

  *(a1 + 24) = a4;
  *(a1 + 32) = v16;
  v17 = a5 + 1;
  if (a5 == -1)
  {
    v17 = 1;
  }

  *(a1 + 40) = a5;
  *(a1 + 48) = v17;
  v18 = a6 + 1;
  if (a6 == -1)
  {
    v18 = 1;
  }

  *(a1 + 56) = a6;
  *(a1 + 64) = v18;
  return result;
}

OrgApacheLuceneIndexSegmentCommitInfo *new_OrgApacheLuceneIndexSegmentCommitInfo_initWithOrgApacheLuceneIndexSegmentInfo_withInt_withLong_withLong_withLong_(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [OrgApacheLuceneIndexSegmentCommitInfo alloc];
  OrgApacheLuceneIndexSegmentCommitInfo_initWithOrgApacheLuceneIndexSegmentInfo_withInt_withLong_withLong_withLong_(v10, a1, a2, a3, a4, a5);
  return v10;
}

OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper *sub_1000FCEBC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 == 1)
  {
    v11 = 8;
  }

  else
  {
    if (a4)
    {
      v17 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Invalid legacy docs flags: ");
      v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
LABEL_14:
      objc_exception_throw(v16);
    }

    v11 = 0;
  }

  v12 = OrgApacheLuceneIndexDocsAndPositionsEnum_unwrapWithOrgApacheLuceneIndexDocsEnum_(a3);
  v13 = [a1 postingsWithOrgApacheLuceneIndexPostingsEnum:v12 withInt:v11];
  if (!v13)
  {
    v16 = new_JavaLangAssertionError_init();
    goto LABEL_14;
  }

  v14 = v13;
  if (v13 == v12 && OrgApacheLuceneIndexDocsAndPositionsEnum_unwrapliveDocsWithOrgApacheLuceneIndexDocsEnum_(a3) == a2)
  {
    return a3;
  }

  return OrgApacheLuceneIndexDocsAndPositionsEnum_wrapWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneUtilBits_(v14, a2);
}

OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper *sub_1000FCFD0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 >= 4)
  {
    v16 = JreStrcat("$I", a2, a3, a4, a5, a6, a7, a8, @"Invalid legacy docsAndPositions flags: ");
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(v16);
    objc_exception_throw(v17);
  }

  v8 = a3;
  v11 = (32 * a4) | 0x4018u;
  v12 = OrgApacheLuceneIndexDocsAndPositionsEnum_unwrapWithOrgApacheLuceneIndexDocsEnum_(a3);
  v13 = [a1 postingsWithOrgApacheLuceneIndexPostingsEnum:v12 withInt:v11];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  if (v13 == v12 && OrgApacheLuceneIndexDocsAndPositionsEnum_unwrapliveDocsWithOrgApacheLuceneIndexDocsEnum_(v8) == a2)
  {
    return v8;
  }

  return OrgApacheLuceneIndexDocsAndPositionsEnum_wrapWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneUtilBits_(v14, a2);
}

uint64_t OrgApacheLuceneIndexTermsEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005714C();
  }

  if (qword_100554640 != -1)
  {
    sub_1000FD660();
  }

  return qword_100554638;
}

IOSObjectArray *OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169C0();
  }

  v0 = OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_ count:3 type:v0];
}

void *OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169C0();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 3)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000169C0();
  }

  if (qword_100554650 != -1)
  {
    sub_1000FD674();
  }

  return qword_100554648;
}

OrgApacheLuceneIndexReaderSlice *new_OrgApacheLuceneIndexReaderSlice_initWithInt_withInt_withInt_(int a1, int a2, int a3)
{
  result = [OrgApacheLuceneIndexReaderSlice alloc];
  result->start_ = a1;
  result->length_ = a2;
  result->readerIndex_ = a3;
  return result;
}

uint64_t OrgApacheLuceneIndexReaderSlice_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexReaderSlice__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000FD814();
  }

  if (qword_100554660 != -1)
  {
    sub_1000FD820();
  }

  return qword_100554658;
}

OrgApacheLuceneUtilCounter_AtomicCounter *OrgApacheLuceneUtilCounter_newCounterWithBoolean_(int a1)
{
  if (a1)
  {
    v1 = [OrgApacheLuceneUtilCounter_AtomicCounter alloc];
    v2 = new_JavaUtilConcurrentAtomicAtomicLong_init();
    JreStrongAssignAndConsume(&v1->count_, v2);
  }

  else
  {
    v1 = [OrgApacheLuceneUtilCounter_SerialCounter alloc];
    v1->count_ = 0;
  }

  return v1;
}

OrgApacheLuceneUtilCounter_SerialCounter *OrgApacheLuceneUtilCounter_newCounter()
{
  v0 = [OrgApacheLuceneUtilCounter_SerialCounter alloc];
  v0->count_ = 0;

  return v0;
}

uint64_t OrgLukhnosPortmobileFileAtomicMoveNotSupportedException_initWithNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v5 = [IOSObjectArray arrayWithObjects:v8 count:3 type:NSObject_class_()];
  v6 = NSString_formatWithNSString_withNSObjectArray_(@"Atomic move not supported from %s to %s, reason: %s.", v5);
  return JavaIoIOException_initWithNSString_(a1, v6);
}

OrgLukhnosPortmobileFileAtomicMoveNotSupportedException *new_OrgLukhnosPortmobileFileAtomicMoveNotSupportedException_initWithNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [OrgLukhnosPortmobileFileAtomicMoveNotSupportedException alloc];
  OrgLukhnosPortmobileFileAtomicMoveNotSupportedException_initWithNSString_withNSString_withNSString_(v6, a1, a2, a3);
  return v6;
}

OrgApacheLuceneUtilPackedBulkOperationPacked20 *new_OrgApacheLuceneUtilPackedBulkOperationPacked20_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked20 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 20);
  return v0;
}

OrgApacheLuceneSearchFakeScorer *new_OrgApacheLuceneSearchFakeScorer_init()
{
  v0 = [OrgApacheLuceneSearchFakeScorer alloc];
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(v0, 0);
  v0->doc_ = -1;
  v0->freq_ = 1;
  return v0;
}

OrgApacheLuceneSearchMatchNoDocsQuery *new_OrgApacheLuceneSearchMatchNoDocsQuery_init()
{
  v0 = [OrgApacheLuceneSearchMatchNoDocsQuery alloc];
  OrgApacheLuceneSearchQuery_init(v0);
  return v0;
}

void *OrgApacheLuceneUtilPackedDirect16_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(a1, a2, 16);
  v4 = [IOSShortArray newArrayWithLength:v2];

  return JreStrongAssignAndConsume((a1 + 16), v4);
}

id OrgApacheLuceneUtilPackedDirect16_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  OrgApacheLuceneUtilPackedDirect16_initWithInt_(a1, a4);
  if (a4 >= 1)
  {
    if (a3)
    {
      v7 = 0;
      while (1)
      {
        v8 = [a3 readShort];
        v9 = *(a1 + 16);
        if (!v9)
        {
          break;
        }

        v10 = v8;
        v11 = *(v9 + 8);
        if (v7 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v7);
        }

        *(v9 + 12 + 2 * v7++) = v10;
        if (a4 == v7)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

LABEL_9:
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_)
  {
    goto LABEL_16;
  }

  result = [OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_ byteCountWithInt:a2 withInt:a4 withInt:16];
  v13 = result - 2 * a4;
  if (v13 >= 1)
  {
    if (!a3)
    {
      goto LABEL_16;
    }

    do
    {
      result = [a3 readByte];
      --v13;
    }

    while (v13);
  }

  return result;
}

OrgApacheLuceneUtilPackedDirect16 *new_OrgApacheLuceneUtilPackedDirect16_initWithInt_(uint64_t a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirect16 alloc];
  OrgApacheLuceneUtilPackedDirect16_initWithInt_(v2, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirect16 *new_OrgApacheLuceneUtilPackedDirect16_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(unsigned int a1, void *a2, uint64_t a3)
{
  v6 = [OrgApacheLuceneUtilPackedDirect16 alloc];
  OrgApacheLuceneUtilPackedDirect16_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(v6, a1, a2, a3);
  return v6;
}

void *OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(uint64_t a1, void *a2)
{
  OrgApacheLuceneIndexTermsEnum_init(a1);
  *(a1 + 24) = -1;
  JreStrongAssign((a1 + 16), a2);
  v4 = new_OrgApacheLuceneUtilBytesRefBuilder_init();

  return JreStrongAssignAndConsume((a1 + 32), v4);
}

OrgApacheLuceneIndexSortedSetDocValuesTermsEnum *new_OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(void *a1)
{
  v2 = [OrgApacheLuceneIndexSortedSetDocValuesTermsEnum alloc];
  OrgApacheLuceneIndexSortedSetDocValuesTermsEnum_initWithOrgApacheLuceneIndexSortedSetDocValues_(v2, a1);
  return v2;
}

IOSObjectArray *OrgApacheLuceneIndexDocValuesTypeEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  v0 = OrgApacheLuceneIndexDocValuesTypeEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneIndexDocValuesTypeEnum_values_ count:6 type:v0];
}

void *OrgApacheLuceneIndexDocValuesTypeEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneIndexDocValuesTypeEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 6)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t OrgApacheLuceneIndexDocValuesTypeEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  if (qword_100554670 != -1)
  {
    sub_100100990();
  }

  return qword_100554668;
}

void *OrgApacheLuceneUtilPackedDirect64_initWithInt_(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  OrgApacheLuceneUtilPackedPackedInts_MutableImpl_initWithInt_withInt_(a1, a2, 64);
  v4 = [IOSLongArray newArrayWithLength:v2];

  return JreStrongAssignAndConsume((a1 + 16), v4);
}

uint64_t OrgApacheLuceneUtilPackedDirect64_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  result = OrgApacheLuceneUtilPackedDirect64_initWithInt_(a1, a4);
  if (v4 >= 1)
  {
    if (a3)
    {
      v8 = 0;
      v9 = v4;
      while (1)
      {
        v10 = [a3 readLong];
        v11 = *(a1 + 16);
        if (!v11)
        {
          break;
        }

        v12 = v10;
        result = *(v11 + 8);
        if (v8 >= result)
        {
          IOSArray_throwOutOfBoundsWithMsg(result, v8);
        }

        *(v11 + 16 + 8 * v8++) = v12;
        if (v9 == v8)
        {
          return result;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return result;
}

OrgApacheLuceneUtilPackedDirect64 *new_OrgApacheLuceneUtilPackedDirect64_initWithInt_(uint64_t a1)
{
  v2 = [OrgApacheLuceneUtilPackedDirect64 alloc];
  OrgApacheLuceneUtilPackedDirect64_initWithInt_(v2, a1);
  return v2;
}

OrgApacheLuceneUtilPackedDirect64 *new_OrgApacheLuceneUtilPackedDirect64_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [OrgApacheLuceneUtilPackedDirect64 alloc];
  OrgApacheLuceneUtilPackedDirect64_initWithInt_withOrgApacheLuceneStoreDataInput_withInt_(v5, v6, a2, a3);
  return v5;
}

uint64_t OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_()
{
  if (qword_100554680 != -1)
  {
    sub_100100F18();
  }

  return qword_100554678;
}

uint64_t OrgApacheLuceneIndexIndexReader_init(uint64_t a1)
{
  *(a1 + 8) = 0;
  v2 = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1u);
  JreStrongAssignAndConsume((a1 + 16), v2);
  v3 = new_JavaUtilLinkedHashSet_init();
  v4 = JavaUtilCollections_synchronizedSetWithJavaUtilSet_(v3);
  JreStrongAssign((a1 + 24), v4);
  v5 = new_JavaUtilWeakHashMap_init();
  v6 = JavaUtilCollections_newSetFromMapWithJavaUtilMap_(v5);
  v7 = JavaUtilCollections_synchronizedSetWithJavaUtilSet_(v6);
  JreStrongAssign((a1 + 32), v7);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0)
    {
      v9 = new_JavaLangError_initWithNSString_(@"IndexReader should never be directly extended, subclass LeafReader or CompositeReader instead.");
      objc_exception_throw(v9);
    }
  }

  return result;
}

uint64_t sub_100101150(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  objc_sync_enter(v4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 24);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [*(a1 + 24) countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (!v9)
        {
          JreThrowNullPointerException();
        }

        [v9 onCloseWithOrgApacheLuceneIndexIndexReader:{a1, v12}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v10 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v6 = v10;
    }

    while (v10);
  }

  OrgApacheLuceneUtilIOUtils_reThrowUncheckedWithJavaLangThrowable_(a2);
  return objc_sync_exit(v4);
}

void sub_1001012BC(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001012EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  if (!v3)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (!v7)
        {
          goto LABEL_12;
        }

        *(v7 + 9) = 1;
        v8 = *(v7 + 16);
        if (!v8)
        {
          goto LABEL_12;
        }

        [v8 addAndGetWithInt:{0, v10}];
        sub_1001012EC(v7);
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return objc_sync_exit(v2);
}

uint64_t sub_100101508(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  if ([v2 get] <= 0)
  {
    v12 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this IndexReader is closed");
LABEL_10:
    objc_exception_throw(v12);
  }

  result = [*(a1 + 16) decrementAndGet];
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
      v11 = JreStrcat("$I$", v4, v5, v6, v7, v8, v9, v10, @"too many decRef calls: refCount is ");
      v12 = new_JavaLangIllegalStateException_initWithNSString_(v11);
      goto LABEL_10;
    }
  }

  else
  {
    *(a1 + 8) = 1;
    [a1 doClose];
    sub_1001012EC(a1);
    return sub_100101150(a1, 0);
  }

  return result;
}

void sub_100101620(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
  }

  JUMPOUT(0x10010158CLL);
}

id OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader_initWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  OrgApacheLuceneUtilPackedPackedInts_ReaderImpl_initWithInt_(a1, a3);
  JreStrongAssign((a1 + 16), a4);
  *(a1 + 24) = a2;
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  result = [a4 getFilePointer];
  *(a1 + 32) = result;
  *(a1 + 40) = 64 / a2;
  *(a1 + 48) = ~(-1 << a2);
  return result;
}

OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader *new_OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader_initWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(int a1, uint64_t a2, void *a3)
{
  v6 = [OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader alloc];
  OrgApacheLuceneUtilPackedDirectPacked64SingleBlockReader_initWithInt_withInt_withOrgApacheLuceneStoreIndexInput_(v6, a1, a2, a3);
  return v6;
}

OrgApacheLuceneUtilAutomatonTransition *OrgApacheLuceneUtilAutomatonCompiledAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withJavaLangBoolean_withBoolean_withInt_withBoolean_(uint64_t a1, OrgApacheLuceneUtilAutomatonAutomaton *a2, void *a3, int a4, int a5, int a6)
{
  v12 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  JreStrongAssignAndConsume((a1 + 64), v12);
  if (!a2)
  {
    goto LABEL_51;
  }

  if ([(OrgApacheLuceneUtilAutomatonAutomaton *)a2 getNumStates])
  {
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    a2 = new_OrgApacheLuceneUtilAutomatonAutomaton_init();
    [(OrgApacheLuceneUtilAutomatonAutomaton *)a2 createState];
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  if (OrgApacheLuceneUtilAutomatonOperations_isEmptyWithOrgApacheLuceneUtilAutomatonAutomaton_(a2))
  {
    if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100102AC0();
    }

    v13 = OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_values_;
LABEL_46:
    JreStrongAssign((a1 + 8), v13);
    JreStrongAssign((a1 + 16), 0);
    JreStrongAssign((a1 + 40), 0);
    JreStrongAssign((a1 + 24), 0);
    JreStrongAssign((a1 + 32), 0);
    v17 = (a1 + 48);
    v16 = 0;
LABEL_47:
    result = JreStrongAssign(v17, v16);
    goto LABEL_48;
  }

  if (a6)
  {
    if ((OrgApacheLuceneUtilAutomatonOperations_isTotalWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withInt_(a2, 0, 255) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_43:
    if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100102AC0();
    }

    v13 = qword_100557AB0;
    goto LABEL_46;
  }

  if (OrgApacheLuceneUtilAutomatonOperations_isTotalWithOrgApacheLuceneUtilAutomatonAutomaton_(a2))
  {
    goto LABEL_43;
  }

LABEL_12:
  a2 = OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a2, a5);
  SingletonWithOrgApacheLuceneUtilAutomatonAutomaton = OrgApacheLuceneUtilAutomatonOperations_getSingletonWithOrgApacheLuceneUtilAutomatonAutomaton_(a2);
  if (SingletonWithOrgApacheLuceneUtilAutomatonAutomaton)
  {
    v15 = SingletonWithOrgApacheLuceneUtilAutomatonAutomaton;
    if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100102AC0();
    }

    JreStrongAssign((a1 + 8), qword_100557AB8);
    JreStrongAssign((a1 + 40), 0);
    JreStrongAssign((a1 + 24), 0);
    JreStrongAssign((a1 + 32), 0);
    JreStrongAssign((a1 + 48), 0);
    if (!a6)
    {
      v32 = OrgApacheLuceneUtilUnicodeUtil_newStringWithIntArray_withInt_withInt_(*(v15 + 8), *(v15 + 16), *(v15 + 20));
      v33 = new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(v32);
      result = JreStrongAssignAndConsume((a1 + 16), v33);
      goto LABEL_48;
    }

    v16 = OrgApacheLuceneUtilStringHelper_intsRefToBytesRefWithOrgApacheLuceneUtilIntsRef_(v15);
    v17 = (a1 + 16);
    goto LABEL_47;
  }

LABEL_17:
  if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100102AC0();
  }

  JreStrongAssign((a1 + 8), qword_100557AC0);
  JreStrongAssign((a1 + 16), 0);
  if (a3)
  {
    v18 = (a1 + 48);
    v19 = a3;
  }

  else
  {
    isFiniteWithOrgApacheLuceneUtilAutomatonAutomaton = OrgApacheLuceneUtilAutomatonOperations_isFiniteWithOrgApacheLuceneUtilAutomatonAutomaton_(a2);
    v19 = JavaLangBoolean_valueOfWithBoolean_(isFiniteWithOrgApacheLuceneUtilAutomatonAutomaton);
    v18 = (a1 + 48);
  }

  JreStrongAssign(v18, v19);
  if ((a6 & 1) == 0)
  {
    a2 = [new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init() convertWithOrgApacheLuceneUtilAutomatonAutomaton:a2];
  }

  v21 = *(a1 + 48);
  if (!v21)
  {
    goto LABEL_51;
  }

  if ([v21 BOOLeanValue])
  {
    goto LABEL_29;
  }

  CommonSuffixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_withInt = OrgApacheLuceneUtilAutomatonOperations_getCommonSuffixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a2, a5);
  if (!CommonSuffixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_withInt)
  {
    goto LABEL_51;
  }

  v23 = CommonSuffixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_withInt;
  if (!CommonSuffixBytesRefWithOrgApacheLuceneUtilAutomatonAutomaton_withInt[5])
  {
LABEL_29:
    v24 = (a1 + 40);
    v23 = 0;
  }

  else
  {
    v24 = (a1 + 40);
  }

  JreStrongAssign(v24, v23);
  v25 = new_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(a2, 1, a5);
  JreStrongAssignAndConsume((a1 + 24), v25);
  JreStrongAssign((a1 + 32), *(*(a1 + 24) + 8));
  v26 = *(a1 + 32);
  if (!v26)
  {
LABEL_51:
    JreThrowNullPointerException();
  }

  v27 = [*(a1 + 32) getNumStates];
  result = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if (v27 < 1)
  {
LABEL_48:
    LODWORD(v30) = -1;
    goto LABEL_49;
  }

  v29 = result;
  v30 = 0;
  while (1)
  {
    result = [v26 isAcceptWithInt:v30];
    if (result)
    {
      result = [v26 initTransitionWithInt:v30 withOrgApacheLuceneUtilAutomatonTransition:v29];
      if (result >= 1)
      {
        break;
      }
    }

LABEL_40:
    v30 = (v30 + 1);
    if (v30 == v27)
    {
      goto LABEL_48;
    }
  }

  v31 = result;
  while (1)
  {
    result = [v26 getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v29];
    if (v29->dest_ == v30 && !v29->min_ && v29->max_ == 255)
    {
      break;
    }

    if (!--v31)
    {
      goto LABEL_40;
    }
  }

LABEL_49:
  *(a1 + 56) = v30;
  return result;
}

id sub_100101FF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_21;
  }

  v11 = [v6 initTransitionWithInt:a2 withOrgApacheLuceneUtilAutomatonTransition:*(a1 + 64)];
  v12 = *(a1 + 64);
  v13 = (v11 - 1);
  if (v11 < 1)
  {
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = -v11;
    v15 = 0xFFFFFFFFLL;
    do
    {
      [*(a1 + 32) getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v12];
      v12 = *(a1 + 64);
      if (!v12)
      {
        goto LABEL_21;
      }

      if (*(v12 + 16) >= a5)
      {
        goto LABEL_9;
      }

      v15 = (v15 + 1);
    }

    while (v14 + v15 != -1);
    v15 = v13;
  }

LABEL_9:
  [*(a1 + 32) getTransitionWithInt:a2 withInt:v15 withOrgApacheLuceneUtilAutomatonTransition:?];
  v16 = *(a1 + 64);
  if (!v16 || !a3)
  {
LABEL_21:
    JreThrowNullPointerException();
  }

  v17 = *(v16 + 20);
  if (v17 >= a5 - 1)
  {
    v18 = a5 - 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = (a4 + 1);
  [a3 growWithInt:v19];
  [a3 setByteAtWithInt:a4 withByte:v18];
  v20 = *(*(a1 + 64) + 12);
  v21 = [*(a1 + 32) getNumTransitionsWithInt:v20];
  if (v21)
  {
    do
    {
      [*(a1 + 32) getTransitionWithInt:v20 withInt:v21 - 1 withOrgApacheLuceneUtilAutomatonTransition:*(a1 + 64)];
      v22 = (v19 + 1);
      [a3 growWithInt:v22];
      [a3 setByteAtWithInt:v19 withByte:*(*(a1 + 64) + 20)];
      v20 = *(*(a1 + 64) + 12);
      v21 = [*(a1 + 32) getNumTransitionsWithInt:v20];
      v19 = v22;
    }

    while (v21);
  }

  else
  {
    v22 = v19;
  }

  [a3 setLengthWithInt:v22];

  return [a3 get];
}

IOSObjectArray *OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100102AC0();
  }

  v0 = OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_values_ count:4 type:v0];
}

void *OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100102AC0();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 4)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonCompiledAutomaton_AUTOMATON_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100102AC0();
  }

  if (qword_100554690 != -1)
  {
    sub_100102ACC();
  }

  return qword_100554688;
}

void *OrgApacheLuceneIndexAutomatonTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilAutomatonCompiledAutomaton_(uint64_t a1, void *a2, uint64_t a3)
{
  OrgApacheLuceneIndexFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(a1, a2);
  v5 = new_OrgApacheLuceneUtilBytesRefBuilder_init();
  JreStrongAssignAndConsume((a1 + 89), v5);
  *(a1 + 97) = 0;
  v6 = new_OrgApacheLuceneUtilBytesRef_initWithInt_(10);
  JreStrongAssignAndConsume((a1 + 105), v6);
  v7 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  JreStrongAssignAndConsume((a1 + 113), v7);
  v8 = new_OrgApacheLuceneUtilIntsRefBuilder_init();
  JreStrongAssignAndConsume((a1 + 121), v8);
  if (!a3 || (v9 = *(a3 + 48)) == 0 || (*(a1 + 57) = [v9 BOOLeanValue], JreStrongAssign((a1 + 41), *(a3 + 24)), JreStrongAssign((a1 + 49), *(a3 + 40)), JreStrongAssign((a1 + 65), *(a3 + 32)), (v10 = *(a1 + 41)) == 0))
  {
    JreThrowNullPointerException();
  }

  v11 = +[IOSLongArray newArrayWithLength:](IOSLongArray, "newArrayWithLength:", [v10 getSize]);

  return JreStrongAssignAndConsume((a1 + 73), v11);
}

uint64_t sub_100103174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 41);
  if (!v3)
  {
    goto LABEL_25;
  }

  v5 = [v3 getInitialState];
  if (a2 >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 89);
      if (!v7)
      {
        break;
      }

      v5 = [*(a1 + 41) stepWithInt:v5 withInt:{objc_msgSend(v7, "byteAtWithInt:", v6)}];
      v6 = (v6 + 1);
      if (a2 == v6)
      {
        goto LABEL_6;
      }
    }

LABEL_25:
    JreThrowNullPointerException();
  }

LABEL_6:
  v8 = *(a1 + 65);
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = [v8 getNumTransitionsWithInt:v5];
  [*(a1 + 65) initTransitionWithInt:v5 withOrgApacheLuceneUtilAutomatonTransition:*(a1 + 113)];
  if (v9 < 1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    [*(a1 + 65) getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:*(a1 + 113)];
    v10 = *(a1 + 113);
    if (!v10)
    {
      goto LABEL_25;
    }

    v11 = *(a1 + 89);
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = *(v10 + 16);
    if (v12 <= [v11 byteAtWithInt:a2])
    {
      v13 = [*(a1 + 89) byteAtWithInt:a2];
      v14 = *(*(a1 + 113) + 20);
      if (v14 >= v13)
      {
        break;
      }
    }

    if (!--v9)
    {
      goto LABEL_15;
    }
  }

  if (v14 == 255)
  {
LABEL_15:
    v15 = -1;
  }

  else
  {
    v15 = v14 + 1;
  }

  v16 = *(a1 + 105);
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = *(v16 + 8);
  if (!v17)
  {
    goto LABEL_25;
  }

  v18 = a2 + 1;
  if (*(v17 + 8) < a2 + 1)
  {
    JreStrongAssignAndConsume((v16 + 8), [IOSByteArray newArrayWithLength:v18]);
  }

  v19 = *(a1 + 89);
  if (!v19)
  {
    goto LABEL_25;
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([v19 bytes], 0, *(*(a1 + 105) + 8), 0, a2);
  v20 = *(*(a1 + 105) + 8);
  result = *(v20 + 8);
  if ((a2 & 0x80000000) != 0 || result <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a2);
  }

  *(v20 + 12 + a2) = v15;
  *(*(a1 + 105) + 20) = v18;
  *(a1 + 97) = 1;
  return result;
}

uint64_t sub_100103404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 89);
  if (!v4)
  {
    goto LABEL_34;
  }

  if ([v4 length] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [*(a1 + 89) byteAtWithInt:a3];
    if (v7 == -1)
    {
      return 0;
    }

    v8 = v7 + 1;
  }

  [*(a1 + 89) setLengthWithInt:a3];
  v9 = *(a1 + 73);
  if (!v9)
  {
    goto LABEL_34;
  }

  v10 = *(v9 + 8);
  if ((a2 & 0x80000000) != 0 || v10 <= a2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, a2);
  }

  *(v9 + 16 + 8 * a2) = *(a1 + 81);
  v11 = *(a1 + 65);
  if (!v11)
  {
LABEL_34:
    JreThrowNullPointerException();
  }

  v12 = [v11 getNumTransitionsWithInt:a2];
  [*(a1 + 65) initTransitionWithInt:a2 withOrgApacheLuceneUtilAutomatonTransition:*(a1 + 113)];
  if (v12 < 1)
  {
    return 0;
  }

  v13 = *(a1 + 113);
  while (1)
  {
    [*(a1 + 65) getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v13];
    v13 = *(a1 + 113);
    if (!v13)
    {
      goto LABEL_34;
    }

    if (*(v13 + 20) >= v8)
    {
      break;
    }

    if (!--v12)
    {
      return 0;
    }
  }

  v15 = JavaLangMath_maxWithInt_withInt_(v8, *(v13 + 16));
  [*(a1 + 89) growWithInt:{objc_msgSend(*(a1 + 89), "length") + 1}];
  [*(a1 + 89) appendWithByte:v15];
  LODWORD(v8) = *(*(a1 + 113) + 12);
  while (1)
  {
    v16 = *(a1 + 73);
    v17 = *(v16 + 8);
    if ((v8 & 0x80000000) != 0 || v8 >= v17)
    {
      IOSArray_throwOutOfBoundsWithMsg(v17, v8);
    }

    if (*(v16 + 16 + 8 * v8) == *(a1 + 81))
    {
      return 1;
    }

    v18 = *(a1 + 41);
    if (!v18)
    {
      goto LABEL_34;
    }

    if ([v18 isAcceptWithInt:v8])
    {
      return 1;
    }

    v19 = *(a1 + 73);
    v20 = *(v19 + 8);
    if ((v8 & 0x80000000) != 0 || v8 >= v20)
    {
      IOSArray_throwOutOfBoundsWithMsg(v20, v8);
    }

    *(v19 + 16 + 8 * v8) = *(a1 + 81);
    [*(a1 + 65) initTransitionWithInt:v8 withOrgApacheLuceneUtilAutomatonTransition:*(a1 + 113)];
    [*(a1 + 65) getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:*(a1 + 113)];
    v8 = *(*(a1 + 113) + 12);
    [*(a1 + 89) growWithInt:{objc_msgSend(*(a1 + 89), "length") + 1}];
    [*(a1 + 89) appendWithByte:*(*(a1 + 113) + 16)];
    if ((*(a1 + 57) & 1) == 0 && (*(a1 + 97) & 1) == 0)
    {
      v21 = *(a1 + 73);
      v22 = *(v21 + 8);
      if ((v8 & 0x80000000) != 0 || v8 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v8);
      }

      if (*(v21 + 16 + 8 * v8) == *(a1 + 81))
      {
        sub_100103174(a1, [*(a1 + 89) length] - 1);
      }
    }
  }
}

uint64_t sub_1001037A4(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  while (1)
  {
    v4 = __OFSUB__(v2, 1);
    v2 = (v2 - 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = *(a1 + 89);
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    v6 = [v5 byteAtWithInt:v2];
    if (v6 != -1)
    {
      [*(a1 + 89) setByteAtWithInt:v2 withByte:(v6 + 1)];
      [*(a1 + 89) setLengthWithInt:(v2 + 1)];
      return v2;
    }
  }

  return 0xFFFFFFFFLL;
}

OrgApacheLuceneIndexAutomatonTermsEnum *new_OrgApacheLuceneIndexAutomatonTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilAutomatonCompiledAutomaton_(void *a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneIndexAutomatonTermsEnum alloc];
  OrgApacheLuceneIndexAutomatonTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilAutomatonCompiledAutomaton_(v4, a1, a2);
  return v4;
}

id OrgApacheLuceneCodecsCodecUtil_writeHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_(void *a1, void *a2, uint64_t a3)
{
  v6 = new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(a2);
  if (!a2)
  {
    goto LABEL_8;
  }

  v7 = v6;
  length = v6->length_;
  if (length != [a2 length] || v7->length_ >= 128)
  {
    v17 = JreStrcat("$$C", v9, v10, v11, v12, v13, v14, v15, @"codec must be simple ASCII, less than 128 characters in length [got ");
    v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  if (!a1)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  [a1 writeIntWithInt:1071082519];
  [a1 writeStringWithNSString:a2];

  return [a1 writeIntWithInt:a3];
}

id OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a4)
  {
    goto LABEL_10;
  }

  if (*(a4 + 8) != 16)
  {
    OrgApacheLuceneUtilStringHelper_idToStringWithByteArray_(a4);
    v23 = JreStrcat("$$", v24, v25, v26, v27, v28, v29, v30, @"Invalid id: ");
LABEL_13:
    v31 = new_JavaLangIllegalArgumentException_initWithNSString_(v23);
    objc_exception_throw(v31);
  }

  OrgApacheLuceneCodecsCodecUtil_writeHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_(a1, a2, a3);
  if (!a1 || ([a1 writeBytesWithByteArray:a4 withInt:0 withInt:*(a4 + 8)], v8 = new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(a5), !a5))
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v9 = v8;
  length = v8->length_;
  if (length != [a5 length] || (v18 = v9->length_, v18 >= 256))
  {
    v23 = JreStrcat("$$C", v11, v12, v13, v14, v15, v16, v17, @"codec must be simple ASCII, less than 256 characters in length [got ");
    goto LABEL_13;
  }

  [a1 writeByteWithByte:v18];
  bytes = v9->bytes_;
  offset = v9->offset_;
  v21 = v9->length_;

  return [a1 writeBytesWithByteArray:bytes withInt:offset withInt:v21];
}

id OrgApacheLuceneCodecsCodecUtil_checkHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ([a1 readInt] != 1071082519)
  {
    v16 = JreStrcat("$I$I", v8, v9, v10, v11, v12, v13, v14, @"codec header mismatch: actual header=");
    v17 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v16, a1);
    objc_exception_throw(v17);
  }

  return OrgApacheLuceneCodecsCodecUtil_checkHeaderNoMagicWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(a1, a2, a3, a4);
}

id OrgApacheLuceneCodecsCodecUtil_checkHeaderNoMagicWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (v8 = [a1 readString]) == 0)
  {
    JreThrowNullPointerException();
  }

  if (([v8 isEqual:a2] & 1) == 0)
  {
    v17 = JreStrcat("$$$$", v9, v10, v11, v12, v13, v14, v15, @"codec mismatch: actual codec=");
    v18 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v17, a1);
    goto LABEL_11;
  }

  result = [a1 readInt];
  if (result < a3)
  {
    v18 = new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(a1, result, a3, a4);
    goto LABEL_11;
  }

  if (result > a4)
  {
    v18 = new_OrgApacheLuceneIndexIndexFormatTooNewException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(a1, result, a3, a4);
LABEL_11:
    objc_exception_throw(v18);
  }

  return result;
}

id OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = OrgApacheLuceneCodecsCodecUtil_checkHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(a1, a2, a3, a4);
  OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderIDWithOrgApacheLuceneStoreDataInput_withByteArray_(a1, a5);
  OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderSuffixWithOrgApacheLuceneStoreDataInput_withNSString_(a1, a6);
  return v9;
}

uint64_t OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderIDWithOrgApacheLuceneStoreDataInput_withByteArray_(void *a1, uint64_t a2)
{
  v4 = [IOSByteArray arrayWithLength:16];
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  [a1 readBytesWithByteArray:v4 withInt:0 withInt:v4->super.size_];
  if ((JavaUtilArrays_equalsWithByteArray_withByteArray_(v5, a2) & 1) == 0)
  {
    OrgApacheLuceneUtilStringHelper_idToStringWithByteArray_(a2);
    OrgApacheLuceneUtilStringHelper_idToStringWithByteArray_(v5);
    v14 = JreStrcat("$$$$", v7, v8, v9, v10, v11, v12, v13, @"file mismatch, expected id=");
    v15 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v14, a1);
    objc_exception_throw(v15);
  }

  return v5;
}

NSString *OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderSuffixWithOrgApacheLuceneStoreDataInput_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v4 = +[IOSByteArray arrayWithLength:](IOSByteArray, "arrayWithLength:", [a1 readByte]);
  [a1 readBytesWithByteArray:v4 withInt:0 withInt:v4->super.size_];
  size = v4->super.size_;
  if ((atomic_load_explicit(OrgLukhnosPortmobileCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10003A2FC();
  }

  v6 = [NSString stringWithBytes:v4 offset:0 length:size charset:OrgLukhnosPortmobileCharsetStandardCharsets_UTF_8_];
  if (([(NSString *)v6 isEqual:a2]& 1) == 0)
  {
    v15 = JreStrcat("$$$$", v7, v8, v9, v10, v11, v12, v13, @"file mismatch, expected suffix=");
    v16 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v15, a1);
    objc_exception_throw(v16);
  }

  return v6;
}

id OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  [a1 writeIntWithInt:3223884776];
  [a1 writeIntWithInt:0];

  return OrgApacheLuceneCodecsCodecUtil_writeCRCWithOrgApacheLuceneStoreIndexOutput_(a1);
}

id OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_(void *a1)
{
  sub_1001045CC(a1);
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 getChecksum];
  CRCWithOrgApacheLuceneStoreIndexInput = OrgApacheLuceneCodecsCodecUtil_readCRCWithOrgApacheLuceneStoreIndexInput_(a1);
  if (CRCWithOrgApacheLuceneStoreIndexInput != v2)
  {
    JavaLangLong_toHexStringWithLong_(CRCWithOrgApacheLuceneStoreIndexInput);
    JavaLangLong_toHexStringWithLong_(v2);
    v12 = JreStrcat("$$$$", v5, v6, v7, v8, v9, v10, v11, @"checksum failed (hardware problem?) : expected=");
    v13 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v12, a1);
    objc_exception_throw(v13);
  }

  return v2;
}

id OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_withJavaLangThrowable_(void *a1, void *a2)
{
  if (a2)
  {
    if (!a1)
    {
      JreThrowNullPointerException();
    }

    v4 = [a1 length];
    v5 = [a1 getFilePointer];
    if (v4 - v5 > 15)
    {
      [a1 skipBytesWithLong:v4 - v5 - 16];
      v15 = OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_(a1);
      JavaLangLong_toHexStringWithLong_(v15);
      v13 = JreStrcat("$$$", v16, v17, v18, v19, v20, v21, v22, @"checksum passed (");
    }

    else
    {
      v13 = JreStrcat("$J$", v6, v7, v8, v9, v10, v11, v12, @"checksum status indeterminate: remaining=");
    }

    [a2 addSuppressedWithJavaLangThrowable:{new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v13, a1)}];

    return OrgApacheLuceneUtilIOUtils_reThrowWithJavaLangThrowable_(a2);
  }

  else
  {

    return OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_(a1);
  }
}

unint64_t OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  [a1 seekWithLong:{objc_msgSend(a1, "length") - 16}];
  sub_1001045CC(a1);

  return OrgApacheLuceneCodecsCodecUtil_readCRCWithOrgApacheLuceneStoreIndexInput_(a1);
}

id OrgApacheLuceneCodecsCodecUtil_checkEOFWithOrgApacheLuceneStoreIndexInput_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 getFilePointer];
  result = [a1 length];
  if (v2 != result)
  {
    [a1 getFilePointer];
    [a1 length];
    v11 = JreStrcat("$J$J", v4, v5, v6, v7, v8, v9, v10, @"did not read all bytes from file: read ");
    v12 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v11, a1);
    objc_exception_throw(v12);
  }

  return result;
}

id OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(void *a1)
{
  if (!a1 || (v1 = [a1 clone]) == 0)
  {
    JreThrowNullPointerException();
  }

  v2 = v1;
  [v1 seekWithLong:0];
  v3 = new_OrgApacheLuceneStoreBufferedChecksumIndexInput_initWithOrgApacheLuceneStoreIndexInput_(v2);
  [(OrgApacheLuceneStoreChecksumIndexInput *)v3 seekWithLong:[(OrgApacheLuceneStoreBufferedChecksumIndexInput *)v3 length]- 16];

  return OrgApacheLuceneCodecsCodecUtil_checkFooterWithOrgApacheLuceneStoreChecksumIndexInput_(v3);
}

unint64_t OrgApacheLuceneCodecsCodecUtil_readCRCWithOrgApacheLuceneStoreIndexInput_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 readLong];
  if (HIDWORD(result))
  {
    v10 = JreStrcat("$J", v3, v4, v5, v6, v7, v8, v9, @"Illegal CRC-32 checksum: ");
    v11 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v10, a1);
    objc_exception_throw(v11);
  }

  return result;
}

id OrgApacheLuceneCodecsCodecUtil_writeCRCWithOrgApacheLuceneStoreIndexOutput_(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 getChecksum];
  if (HIDWORD(v2))
  {
    v10 = JreStrcat("$J$@C", v3, v2, v4, v5, v6, v7, v8, @"Illegal CRC-32 checksum: ");
    v11 = new_JavaLangIllegalStateException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  return [a1 writeLongWithLong:v2];
}

id sub_1001045CC(void *a1)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v2 = [a1 length];
  v3 = [a1 getFilePointer];
  if (v2 - v3 <= 15)
  {
    v26 = @"misplaced codec footer (file truncated?): remaining=";
LABEL_10:
    v27 = JreStrcat("$J$J", v4, v5, v6, v7, v8, v9, v10, v26);
    goto LABEL_13;
  }

  if (v2 - v3 != 16)
  {
    v26 = @"misplaced codec footer (file extended?): remaining=";
    goto LABEL_10;
  }

  if ([a1 readInt] != -1071082520)
  {
    v27 = JreStrcat("$I$I", v11, v12, v13, v14, v15, v16, v17, @"codec footer mismatch (file truncated?): actual footer=");
    goto LABEL_13;
  }

  result = [a1 readInt];
  if (result)
  {
    v27 = JreStrcat("$I", v19, v20, v21, v22, v23, v24, v25, @"codec footer mismatch: unknown algorithmID: ");
LABEL_13:
    v28 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v27, a1);
    objc_exception_throw(v28);
  }

  return result;
}

id OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(uint64_t a1, void *a2, void **a3, void *a4, uint64_t a5, uint64_t a6, void *a7, unsigned int a8, int a9, int a10)
{
  OrgApacheLuceneCodecsStoredFieldsWriter_init();
  JreStrongAssignAndConsume((a1 + 8), [IOSByteArray newArrayWithLength:16]);
  if (!a3)
  {
    goto LABEL_5;
  }

  JreStrongAssign((a1 + 16), a3[1]);
  JreStrongAssign((a1 + 48), a7);
  if (!a7)
  {
    goto LABEL_5;
  }

  JreStrongAssign((a1 + 40), [a7 newCompressor]);
  *(a1 + 56) = a8;
  *(a1 + 60) = a9;
  *(a1 + 88) = 0;
  v17 = new_OrgApacheLuceneUtilGrowableByteArrayDataOutput_initWithInt_(a8);
  JreStrongAssignAndConsume((a1 + 64), v17);
  JreStrongAssignAndConsume((a1 + 72), [IOSIntArray newArrayWithLength:16]);
  JreStrongAssignAndConsume((a1 + 80), [IOSIntArray newArrayWithLength:16]);
  *(a1 + 92) = 0;
  if (!a2)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  v18 = [a2 createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a1 + 16) withOrgApacheLuceneStoreIOContext:{a4, OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_FIELDS_INDEX_EXTENSION_), a5}];
  v19 = [a2 createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(a1 + 16) withOrgApacheLuceneStoreIOContext:{a4, OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_FIELDS_EXTENSION_), a5}];
  JreStrongAssign((a1 + 32), v19);
  v27 = JreStrcat("$$", v20, v21, v22, v23, v24, v25, v26, a6);
  v35 = JreStrcat("$$", v28, v29, v30, v31, v32, v33, v34, a6);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(v18, v27, 1, [a3 getId], a4);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(*(a1 + 32), v35, 1, [a3 getId], a4);
  v36 = new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter_initWithOrgApacheLuceneStoreIndexOutput_withInt_(v18, a10);
  JreStrongAssignAndConsume((a1 + 24), v36);
  [*(a1 + 32) writeVIntWithInt:a8];
  return [*(a1 + 32) writeVIntWithInt:2];
}

void sub_100104A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    a13 = *(v15 + *(v16 + 1168));
    a15 = *(v15 + 24);
    v17 = [IOSObjectArray arrayWithObjects:&a13 count:3 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v17);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100104B80(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x100104AFCLL);
  }

  JUMPOUT(0x100104B74);
}

id sub_100105088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = *(a1 + 32);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  [v7 writeVIntWithInt:a2];
  [*(a1 + 32) writeVIntWithInt:a6 | (2 * a3)];
  sub_1001064F8(a4, a3, *(a1 + 32), v12, v13, v14, v15, v16);
  v22 = *(a1 + 32);

  return sub_1001064F8(a5, a3, v22, v17, v18, v19, v20, v21);
}

id OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_writeTLongWithOrgApacheLuceneStoreDataOutput_withLong_(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A5928();
  }

  if (a2 % 1000)
  {
    v4 = 0;
  }

  else if (a2 % 86400000)
  {
    if (a2 % 3600000)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0x80;
    }

    if (a2 % 3600000)
    {
      a2 /= 1000;
    }

    else
    {
      a2 /= 3600000;
    }
  }

  else
  {
    v4 = -64;
    a2 /= 86400000;
  }

  v5 = OrgApacheLuceneUtilBitUtil_zigZagEncodeWithLong_(a2);
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  v7 = v5 & 0x1F | v4;
  if (v5 >= 0x20)
  {
    v7 |= 0x20u;
  }

  result = [a1 writeByteWithByte:v7];
  if (v6 >= 0x20)
  {

    return [a1 writeVLongWithLong:v6 >> 5];
  }

  return result;
}

id OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_writeZFloatWithOrgApacheLuceneStoreDataOutput_withFloat_(void *a1, float a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A5928();
  }

  if (a2 < 0.0)
  {
    v4 = 0x80000000;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  if (a2 == 0x80000000)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2;
  }

  v6 = JavaLangFloat_floatToIntBitsWithFloat_(a2);
  v7 = v6;
  *&v8 = v5;
  if (v5 == a2 && (v5 - 126) >= 0xFFFFFF81 && v6 != OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_NEGATIVE_ZERO_FLOAT_)
  {
    if (a1)
    {

      return [a1 writeByteWithByte:{(v5 + 1) | 0xFFFFFF80, v8}];
    }

LABEL_26:
    JreThrowNullPointerException();
  }

  if ((v6 & 0x80000000) != 0)
  {
    if (!a1)
    {
      goto LABEL_26;
    }

    [a1 writeByteWithByte:{0xFFFFFFFFLL, v8}];
  }

  else if (!a1)
  {
    goto LABEL_26;
  }

  return [a1 writeIntWithInt:{v7, v8}];
}

id OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_writeZDoubleWithOrgApacheLuceneStoreDataOutput_withDouble_(void *a1, double a2)
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A5928();
  }

  if (a2 < 0.0)
  {
    v4 = 0x80000000;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  if (a2 == 0x80000000)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2;
  }

  v6 = JavaLangDouble_doubleToLongBitsWithDouble_(a2);
  v7 = v6;
  if (v5 == a2 && (v5 - 125) >= 0xFFFFFF82 && v6 != OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_NEGATIVE_ZERO_DOUBLE_)
  {
    if (a1)
    {

      return [a1 writeByteWithByte:{(v5 + 1) | 0xFFFFFF80, v5}];
    }

LABEL_31:
    JreThrowNullPointerException();
  }

  v10 = a2;
  v11 = v10;
  if (v10 == a2)
  {
    if (!a1)
    {
      goto LABEL_31;
    }

    [a1 writeByteWithByte:{4294967294, v11}];
    v12 = a2;
    v13 = JavaLangFloat_floatToIntBitsWithFloat_(v12);

    return [a1 writeIntWithInt:v13];
  }

  else
  {
    if (v6 < 0)
    {
      if (!a1)
      {
        goto LABEL_31;
      }

      [a1 writeByteWithByte:{0xFFFFFFFFLL, v11}];
    }

    else if (!a1)
    {
      goto LABEL_31;
    }

    return [a1 writeLongWithLong:{v7, v11}];
  }
}

OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter *new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(void *a1, void **a2, void *a3, uint64_t a4, uint64_t a5, void *a6, unsigned int a7, int a8, int a9)
{
  v17 = [OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter alloc];
  OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(v17, a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A5928();
  }

  if (qword_1005546A0 != -1)
  {
    sub_100106794();
  }

  return qword_100554698;
}

id sub_1001064F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A5928();
  }

  if (v9 == 1)
  {
    if (a3 && a1)
    {
      v11 = *(a1 + 8);
      if (v11 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, 0);
      }

LABEL_21:
      v16 = *(a1 + 12);

      return [a3 writeVIntWithInt:v16];
    }

    goto LABEL_41;
  }

  if (v9 < 2)
  {
LABEL_18:
    if (a3)
    {
      [a3 writeVIntWithInt:0];
      if (a1)
      {
        v15 = *(a1 + 8);
        if (v15 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, 0);
        }

        goto LABEL_21;
      }
    }

LABEL_41:
    JreThrowNullPointerException();
  }

  if (!a1)
  {
    goto LABEL_41;
  }

  v12 = a1 + 4;
  v13 = 1;
  while (1)
  {
    v14 = *(a1 + 8);
    if (v13 >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, v13);
    }

    if (v14 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, 0);
    }

    if (*(v12 + 12) != *(a1 + 12))
    {
      break;
    }

    ++v13;
    v12 += 4;
    if (v9 == v13)
    {
      goto LABEL_18;
    }
  }

  v18 = 0;
  v19 = 0;
  v20 = a1;
  do
  {
    v21 = *(a1 + 8);
    if (v18 >= v21)
    {
      IOSArray_throwOutOfBoundsWithMsg(v21, v18);
    }

    v19 |= *(v20 + 12);
    ++v18;
    v20 += 4;
  }

  while (v9 != v18);
  v22 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v19, a2, a3, a4, a5, a6, a7, a8);
  if (!a3)
  {
    goto LABEL_41;
  }

  v23 = v22;
  [a3 writeVIntWithInt:v22];
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getWriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(a3, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], v9, v23, 1);
  if (!WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt)
  {
    goto LABEL_41;
  }

  v25 = WriterNoHeaderWithOrgApacheLuceneStoreDataOutput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt;
  v26 = 0;
  v27 = a1;
  do
  {
    v28 = *(a1 + 8);
    if (v26 >= v28)
    {
      IOSArray_throwOutOfBoundsWithMsg(v28, v26);
    }

    [(OrgApacheLuceneUtilPackedPackedWriter *)v25 addWithLong:*(v27 + 12)];
    ++v26;
    v27 += 4;
  }

  while (v9 != v26);

  return [(OrgApacheLuceneUtilPackedPackedWriter *)v25 finish];
}

uint64_t OrgLukhnosPortmobileInvokeMethodHandles_publicLookup()
{
  if ((atomic_load_explicit(OrgLukhnosPortmobileInvokeMethodHandles__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001068AC();
  }

  return OrgLukhnosPortmobileInvokeMethodHandles_publicLookupInstance_;
}

id OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(uint64_t a1, void **a2, void *a3)
{
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(a1, a2[1]);
  JreStrongAssign((a1 + 16), a2);

  return JreStrongAssign((a1 + 24), a3);
}

OrgApacheLuceneSearchReqOptSumScorer *new_OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(void **a1, void *a2)
{
  v4 = [OrgApacheLuceneSearchReqOptSumScorer alloc];
  OrgApacheLuceneSearchReqOptSumScorer_initWithOrgApacheLuceneSearchScorer_withOrgApacheLuceneSearchScorer_(v4, a1, a2);
  return v4;
}

id OrgApacheLuceneCodecsDocValuesFormat_initWithNSString_(uint64_t a1, void *a2)
{
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(a2);

  return JreStrongAssign((a1 + 8), a2);
}

id OrgApacheLuceneCodecsDocValuesFormat_forNameWithNSString_(uint64_t a1)
{
  v2 = sub_100106F70();

  return [v2 lookupWithNSString:a1];
}

uint64_t OrgApacheLuceneCodecsDocValuesFormat_class_()
{
  if (qword_1005546B0 != -1)
  {
    sub_100106FBC();
  }

  return qword_1005546A8;
}

uint64_t sub_100106F70()
{
  if ((atomic_load_explicit(&OrgApacheLuceneCodecsDocValuesFormat_Holder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100106FD0();
  }

  result = qword_1005546B8;
  if (!qword_1005546B8)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"You tried to lookup a DocValuesFormat by name before all formats could be initialized. This likely happens if you call DocValuesFormat#forName from a DocValuesFormat's ctor.");
    objc_exception_throw(v1);
  }

  return result;
}

uint64_t OrgApacheLuceneAnalysisTokenattributesBytesTermAttribute_class_()
{
  if (qword_1005546C8 != -1)
  {
    sub_10010703C();
  }

  return qword_1005546C0;
}

uint64_t OrgApacheLuceneIndexNumericDocValues_class_()
{
  if (qword_1005546D8 != -1)
  {
    sub_1001070BC();
  }

  return qword_1005546D0;
}

id OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  OrgApacheLuceneCodecsNormsConsumer_init();
  if (!a2 || (v11 = *(a2 + 24)) == 0 || (v12 = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(v11 + 8), *(a2 + 64), a4), (v13 = *(a2 + 16)) == 0))
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 8), [v13 createOutputWithNSString:v12 withOrgApacheLuceneStoreIOContext:*(a2 + 72)]);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(*(a1 + 8), a3, 0, [*(a2 + 24) getId], *(a2 + 64));
  v14 = [*(a2 + 16) createOutputWithNSString:OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(*(*(a2 + 24) + 8) withOrgApacheLuceneStoreIOContext:{*(a2 + 64), a6), *(a2 + 72)}];
  JreStrongAssign((a1 + 16), v14);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(*(a1 + 16), a5, 0, [*(a2 + 24) getId], *(a2 + 64));
  result = [*(a2 + 24) maxDoc];
  *(a1 + 24) = result;
  return result;
}

void sub_1001072EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v11 = [IOSObjectArray arrayWithObjects:&a11 count:1 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v11);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10010733C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100107344);
  }

  objc_terminate();
}

id sub_10010761C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (!v3 || ([v3 writeByteWithByte:1], (v5 = *(a1 + 8)) == 0) || (objc_msgSend(*(a1 + 16), "writeLongWithLong:", objc_msgSend(v5, "getFilePointer")), v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, !a2))
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (!v10)
        {
          goto LABEL_13;
        }

        [*(a1 + 8) writeByteWithByte:{objc_msgSend(v10, "charValue", v11)}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

id sub_10010776C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (!v3 || ([v3 writeByteWithByte:2], (v5 = *(a1 + 8)) == 0) || (objc_msgSend(*(a1 + 16), "writeLongWithLong:", objc_msgSend(v5, "getFilePointer")), v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, !a2))
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (!v10)
        {
          goto LABEL_13;
        }

        [*(a1 + 8) writeShortWithShort:{objc_msgSend(v10, "shortValue", v11)}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

id sub_1001078BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (!v3 || ([v3 writeByteWithByte:4], (v5 = *(a1 + 8)) == 0) || (objc_msgSend(*(a1 + 16), "writeLongWithLong:", objc_msgSend(v5, "getFilePointer")), v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, !a2))
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (!v10)
        {
          goto LABEL_13;
        }

        [*(a1 + 8) writeIntWithInt:{objc_msgSend(v10, "intValue", v11)}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

id sub_100107A0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (!v3 || ([v3 writeByteWithByte:8], (v5 = *(a1 + 8)) == 0) || (objc_msgSend(*(a1 + 16), "writeLongWithLong:", objc_msgSend(v5, "getFilePointer")), v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, !a2))
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (!v10)
        {
          goto LABEL_13;
        }

        [*(a1 + 8) writeLongWithLong:{objc_msgSend(v10, "longLongValue", v11)}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_100107CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v14 = *(v11 + v12);
    a10 = *(v11 + *(v13 + 1252));
    a11 = v14;
    v15 = [IOSObjectArray arrayWithObjects:&a10 count:2 type:JavaIoCloseable_class_()];
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v15);
    JUMPOUT(0x100107C80);
  }

  _Unwind_Resume(exception_object);
}

OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer *new_OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = [OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer alloc];
  OrgApacheLuceneCodecsLucene53Lucene53NormsConsumer_initWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(v10, a1, a2, a3, a4, a5);
  return v10;
}

id OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(id *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = JreStrcat("$$$$$", a2, a3, a4, a5, a6, a7, a8, @"Format version is not supported (resource ");
  JavaIoIOException_initWithNSString_(a1, v11);
  JreStrongAssign(a1 + 11, a2);
  JreStrongAssign(a1 + 12, a3);
  JreStrongAssign(a1 + 13, 0);
  JreStrongAssign(a1 + 14, 0);

  return JreStrongAssign(a1 + 15, 0);
}

id OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = JreStrcat("$$$I$I$I$", a2, a3, a4, a5, a6, a7, a8, @"Format version is not supported (resource ");
  JavaIoIOException_initWithNSString_(a1, v13);
  JreStrongAssign(a1 + 11, a2);
  v14 = JavaLangInteger_valueOfWithInt_(v10);
  JreStrongAssign(a1 + 13, v14);
  v15 = JavaLangInteger_valueOfWithInt_(v9);
  JreStrongAssign(a1 + 14, v15);
  v16 = JavaLangInteger_valueOfWithInt_(v8);
  JreStrongAssign(a1 + 15, v16);

  return JreStrongAssign(a1 + 12, 0);
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withNSString_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneIndexIndexFormatTooOldException alloc];
  v5 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a1);
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withNSString_(&v4->super.super.super.super.super.isa, v5, a2, v6, v7, v8, v9, v10);
  return v4;
}

OrgApacheLuceneIndexIndexFormatTooOldException *new_OrgApacheLuceneIndexIndexFormatTooOldException_initWithOrgApacheLuceneStoreDataInput_withInt_withInt_withInt_(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [OrgApacheLuceneIndexIndexFormatTooOldException alloc];
  v9 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a1);
  OrgApacheLuceneIndexIndexFormatTooOldException_initWithNSString_withInt_withInt_withInt_(&v8->super.super.super.super.super.isa, v9, a2, a3, a4, v10, v11, v12);
  return v8;
}

uint64_t OrgApacheLuceneSearchBooleanScorer_initWithOrgApacheLuceneSearchBooleanWeight_withBoolean_withInt_withJavaUtilCollection_withInt_withBoolean_(uint64_t a1, void *a2, char a3, unsigned int a4, void *a5, int a6, char a7)
{
  (OrgApacheLuceneSearchBulkScorer_init)();
  if (qword_1005546E8 != -1)
  {
    sub_100109AC0();
  }

  JreStrongAssignAndConsume((a1 + 8), [IOSObjectArray newArrayWithLength:2048 type:qword_1005546E0]);
  JreStrongAssignAndConsume((a1 + 16), [IOSLongArray newArrayWithLength:32]);
  v10 = new_OrgApacheLuceneSearchFakeScorer_init();
  JreStrongAssignAndConsume((a1 + 56), v10);
  v11 = [OrgApacheLuceneSearchBooleanScorer_OrCollector alloc];
  objc_storeWeak(&v11->this$0_, a1);
  JreStrongAssignAndConsume((a1 + 80), v11);
  if (a6 < 1)
  {
    goto LABEL_45;
  }

  if (!a5)
  {
LABEL_44:
    JreThrowNullPointerException();
  }

  if ([a5 size] < a6)
  {
LABEL_45:
    v68 = JreStrcat("$I", v12, v13, v14, v15, v16, v17, v18, @"minShouldMatch should be within 1..num_scorers. Got ");
    v69 = new_JavaLangIllegalArgumentException_initWithNSString_(v68);
    objc_exception_throw(v69);
  }

  v19 = *(a1 + 8);
  if (*(v19 + 8) >= 1)
  {
    v20 = 0;
    do
    {
      IOSObjectArray_SetAndConsume(v19, v20++, [OrgApacheLuceneSearchBooleanScorer_Bucket alloc]);
      v19 = *(a1 + 8);
    }

    while (v20 < *(v19 + 8));
  }

  v21 = [a5 size];
  if (qword_1005546F8 != -1)
  {
    sub_100109AD4();
  }

  JreStrongAssignAndConsume((a1 + 32), [IOSObjectArray newArrayWithLength:v21 type:qword_1005546F0]);
  v22 = [a5 size] - a6;
  v23 = [OrgApacheLuceneSearchBooleanScorer_HeadPriorityQueue alloc];
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(v23, v22 + 1, v24, v25, v26, v27, v28, v29);
  JreStrongAssignAndConsume((a1 + 40), v23);
  v30 = [OrgApacheLuceneSearchBooleanScorer_TailPriorityQueue alloc];
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(v30, (a6 - 1), v31, v32, v33, v34, v35, v36);
  JreStrongAssignAndConsume((a1 + 48), v30);
  v70 = a6;
  *(a1 + 64) = a6;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v37 = [a5 countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v76;
    do
    {
      v40 = a5;
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v76 != v39)
        {
          objc_enumerationMutation(v40);
        }

        v42 = *(*(&v75 + 1) + 8 * i);
        if ((a7 & 1) == 0)
        {
          v43 = [OrgApacheLuceneSearchBooleanScorer__1 alloc];
          JreStrongAssign(&v43->val$scorer_, v42);
          OrgApacheLuceneSearchBulkScorer_init(v43);
          v42 = v43;
        }

        v44 = *(a1 + 48);
        v45 = [OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc alloc];
        OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc_initWithOrgApacheLuceneSearchBooleanScorer_withOrgApacheLuceneSearchBulkScorer_(v45, a1, v42);
        v46 = [v44 insertWithOverflowWithId:v45];
        if (v46)
        {
          [*(a1 + 40) addWithId:v46];
        }
      }

      a5 = v40;
      v38 = [v40 countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v38);
  }

  v47 = [a5 size] - v70;
  v48 = [OrgApacheLuceneSearchBooleanScorer__2 alloc];
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(v48, v47 + 1, v49, v50, v51, v52, v53, v54);
  v55 = v48;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v56 = [a5 countByEnumeratingWithState:&v79 objects:v84 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v80;
    do
    {
      for (j = 0; j != v57; j = j + 1)
      {
        if (*v80 != v58)
        {
          objc_enumerationMutation(a5);
        }

        [(OrgApacheLuceneUtilPriorityQueue *)v55 insertWithOverflowWithId:*(*(&v79 + 1) + 8 * j)];
      }

      v57 = [a5 countByEnumeratingWithState:&v79 objects:v84 count:16];
    }

    while (v57);
  }

  v60 = [(OrgApacheLuceneUtilPriorityQueue *)v55 pop];
  v61 = 0;
  if (v60)
  {
    v62 = a4;
    do
    {
      v61 += [v60 cost];
      v60 = [(OrgApacheLuceneUtilPriorityQueue *)v55 pop];
    }

    while (v60);
  }

  else
  {
    v62 = a4;
  }

  *(a1 + 72) = v61;
  result = JreStrongAssignAndConsume((a1 + 24), +[IOSFloatArray newArrayWithLength:](IOSFloatArray, "newArrayWithLength:", ([a5 size] + 1)));
  if (*(*(a1 + 24) + 8) >= 1)
  {
    v64 = 0;
    do
    {
      v65 = 1.0;
      if ((a3 & 1) == 0)
      {
        if (!a2)
        {
          goto LABEL_44;
        }

        [a2 coordWithInt:v64 withInt:v62];
        v65 = v66;
      }

      v67 = *(a1 + 24);
      result = *(v67 + 8);
      if (v64 >= result)
      {
        IOSArray_throwOutOfBoundsWithMsg(result, v64);
      }

      *(v67 + 12 + 4 * v64++) = v65;
    }

    while (v64 < *(*(a1 + 24) + 8));
  }

  return result;
}

uint64_t sub_1001088D4(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = *(a1 + 56);
  result = *(v4 + 8);
  if ((a4 & 0x80000000) != 0 || result <= a4)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, a4);
  }

  v8 = *(v4 + 24 + 8 * a4);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = *(v8 + 16);
  if (v9 >= *(a1 + 64))
  {
    if (v6)
    {
      *(v6 + 24) = v9;
      v10 = *(a1 + 24);
      if (v10)
      {
        v12 = *(v8 + 16);
        v13 = *(v10 + 8);
        if (v12 < 0 || v12 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v12);
        }

        v11 = *(v8 + 8);
        *(v6 + 16) = *(v10 + 12 + 4 * v12) * v11;
        *(v6 + 20) = a4 | a3;
        if (a2)
        {
          result = [a2 collectWithInt:?];
          goto LABEL_12;
        }
      }
    }

LABEL_13:
    JreThrowNullPointerException();
  }

LABEL_12:
  *(v8 + 16) = 0;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_100108A48(uint64_t result, void *a2, int a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  if (*(v3 + 8) >= 1)
  {
    v6 = result;
    v7 = 0;
    do
    {
      v8 = *(v3 + 16 + 8 * v7);
      if (v8)
      {
        do
        {
          v9 = JavaLangLong_numberOfTrailingZerosWithLong_(v8);
          v10 = v9;
          result = sub_1001088D4(v6, a2, a3, v9 | (v7 << 6));
          v11 = 1 << v10 == v8;
          v8 ^= 1 << v10;
        }

        while (!v11);
      }

      ++v7;
    }

    while (v7 < *(v3 + 8));
  }

  return result;
}

uint64_t sub_100108B54(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v19 = a2;
  if (a8 >= 1)
  {
    if (!a7)
    {
      JreThrowNullPointerException();
    }

    v13 = 0;
    v14 = a7;
    v15 = a8;
    do
    {
      v16 = *(a7 + 8);
      if (v13 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v13);
      }

      [*(v14 + 24) scoreWithOrgApacheLuceneUtilBits:a3 withInt:a5 withInt:{a6, v19}];
      ++v13;
      v14 += 8;
    }

    while (v15 != v13);
  }

  sub_100108A48(a1, v19, a4);
  v17 = *(a1 + 16);

  return JavaUtilArrays_fillWithLongArray_withLong_(v17, 0);
}

id sub_100108C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (!v2 || (v4 = *(a1 + 48), v5 = [*(a1 + 40) top], v6 = objc_msgSend(v4, "top"), !v5))
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v7 = v6;
  while (*(v5 + 6) < a2)
  {
    if (v7 && *(v5 + 2) > v7[2])
    {
      [v7 advanceWithInt:a2];
      v8 = [v2 updateTopWithId:v7];
      v7 = [v4 updateTopWithId:v5];
      v5 = v8;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      [v5 advanceWithInt:a2];
      v5 = [v2 updateTop];
      if (!v5)
      {
        goto LABEL_10;
      }
    }
  }

  return v5;
}

_DWORD *sub_100108D5C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_27;
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    goto LABEL_27;
  }

  IOSObjectArray_Set(v6, 0, [v8 pop]);
  result = [*(a1 + 40) size];
  if (result < 1)
  {
    v13 = 1;
  }

  else
  {
    v12 = 1;
    while (1)
    {
      result = [*(a1 + 40) top];
      if (!result)
      {
        goto LABEL_27;
      }

      if (result[6] >= a6)
      {
        break;
      }

      v13 = v12 + 1;
      IOSObjectArray_Set(*(a1 + 32), v12, [*(a1 + 40) pop]);
      result = [*(a1 + 40) size];
      ++v12;
      if (result <= 0)
      {
        goto LABEL_11;
      }
    }

    v13 = v12;
  }

LABEL_11:
  for (i = *(a1 + 64); v13 < i; i = *(a1 + 64))
  {
    v15 = *(a1 + 48);
    if (!v15)
    {
      goto LABEL_27;
    }

    result = [v15 size];
    i = *(a1 + 64);
    if (result + v13 < i)
    {
      break;
    }

    v16 = *(a1 + 48);
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = [v16 pop];
    if (!v17)
    {
      goto LABEL_27;
    }

    v18 = v17;
    [v17 advanceWithInt:a5];
    if (v18[6] >= a6)
    {
      result = [*(a1 + 40) addWithId:v18];
    }

    else
    {
      result = IOSObjectArray_Set(*(a1 + 32), v13++, v18);
    }
  }

  if (v13 < i)
  {
    v19 = v13;
    goto LABEL_29;
  }

  v20 = *(a1 + 48);
  if (!v20)
  {
LABEL_27:
    JreThrowNullPointerException();
  }

  v21 = 0;
  v19 = v13;
  while (v21 < [v20 size])
  {
    IOSObjectArray_Set(*(a1 + 32), v19, [*(a1 + 48) getWithInt:v21]);
    v21 = (v21 + 1);
    v20 = *(a1 + 48);
    ++v19;
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  [*(a1 + 48) clear];
  result = sub_100108B54(a1, a2, a3, a4, a5, a6, *(a1 + 32), v19);
LABEL_29:
  if (v19 >= 1)
  {
    for (j = 0; j != v19; ++j)
    {
      v23 = *(a1 + 32);
      v24 = *(v23 + 8);
      if (j >= v24)
      {
        IOSArray_throwOutOfBoundsWithMsg(v24, j);
      }

      result = [*(a1 + 40) insertWithOverflowWithId:*(v23 + 24 + 8 * j)];
      if (result)
      {
        v25 = result;
        v26 = *(a1 + 48);
        if (!v26)
        {
          goto LABEL_27;
        }

        result = [v26 addWithId:v25];
      }
    }
  }

  return result;
}

OrgApacheLuceneSearchBooleanScorer *new_OrgApacheLuceneSearchBooleanScorer_initWithOrgApacheLuceneSearchBooleanWeight_withBoolean_withInt_withJavaUtilCollection_withInt_withBoolean_(void *a1, char a2, unsigned int a3, void *a4, int a5, char a6)
{
  v12 = [OrgApacheLuceneSearchBooleanScorer alloc];
  OrgApacheLuceneSearchBooleanScorer_initWithOrgApacheLuceneSearchBooleanWeight_withBoolean_withInt_withJavaUtilCollection_withInt_withBoolean_(v12, a1, a2, a3, a4, a5, a6);
  return v12;
}

id OrgApacheLuceneSearchBooleanScorer_BulkScorerAndDoc_initWithOrgApacheLuceneSearchBooleanScorer_withOrgApacheLuceneSearchBulkScorer_(uint64_t a1, void *a2, void *a3)
{
  objc_storeWeak((a1 + 32), a2);
  objc_storeWeak((a1 + 8), a3);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  result = [a3 cost];
  *(a1 + 16) = result;
  *(a1 + 24) = -1;
  return result;
}

uint64_t OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_(uint64_t a1, uint64_t a2)
{
  v3 = [new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init() convertWithOrgApacheLuceneUtilAutomatonAutomaton:a2];

  return OrgApacheLuceneUtilAutomatonRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_withInt_(a1, v3, 256, 1, 10000);
}

uint64_t OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(uint64_t a1, void *a2, char a3, int a4)
{
  v5 = a2;
  if ((a3 & 1) == 0)
  {
    v5 = [new_OrgApacheLuceneUtilAutomatonUTF32ToUTF8_init() convertWithOrgApacheLuceneUtilAutomatonAutomaton:a2];
  }

  return OrgApacheLuceneUtilAutomatonRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_withBoolean_withInt_(a1, v5, 256, 1, a4);
}

OrgApacheLuceneUtilAutomatonByteRunAutomaton *new_OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(void *a1, char a2, int a3)
{
  v6 = [OrgApacheLuceneUtilAutomatonByteRunAutomaton alloc];
  OrgApacheLuceneUtilAutomatonByteRunAutomaton_initWithOrgApacheLuceneUtilAutomatonAutomaton_withBoolean_withInt_(v6, a1, a2, a3);
  return v6;
}

uint64_t OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(uint64_t a1, int a2)
{
  result = OrgApacheLuceneUtilPackedBulkOperation_init();
  *(a1 + 8) = a2;
  v5 = a2;
  do
  {
    v6 = v5;
    v5 >>= 1;
  }

  while ((v6 & 1) == 0);
  *(a1 + 12) = v6;
  *(a1 + 16) = (*(a1 + 12) << 6) / a2;
  v7 = 8 * *(a1 + 12);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 8 * *(a1 + 12);
    v10 = *(a1 + 16);
  }

  else
  {
    do
    {
      v9 = v7 >> 1;
      v10 = v8 >> 1;
      v11 = v7 | v8;
      v8 >>= 1;
      v7 >>= 1;
    }

    while ((v11 & 2) == 0);
  }

  *(a1 + 20) = v9;
  *(a1 + 24) = v10;
  if (a2 == 64)
  {
    *(a1 + 32) = -1;
    LODWORD(v12) = -1;
  }

  else
  {
    v12 = ~(-1 << a2);
    *(a1 + 32) = v12;
  }

  *(a1 + 40) = v12;
  return result;
}

OrgApacheLuceneUtilPackedBulkOperationPacked *new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(int a1)
{
  v2 = [OrgApacheLuceneUtilPackedBulkOperationPacked alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v2, a1);
  return v2;
}

id OrgApacheLuceneUtilFstNodeHash_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(uint64_t a1, void *a2, void *a3)
{
  v6 = new_OrgApacheLuceneUtilFstFST_Arc_init();
  JreStrongAssignAndConsume((a1 + 40), v6);
  v7 = new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(16, 0x8000000, 8, 0.0);
  JreStrongAssignAndConsume((a1 + 8), v7);
  *(a1 + 24) = 15;
  JreStrongAssign((a1 + 32), a2);

  return JreStrongAssign((a1 + 48), a3);
}

id sub_10010B6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_29;
  }

  [v4 readFirstRealTargetArcWithLong:a3 withOrgApacheLuceneUtilFstFST_Arc:*(a1 + 40) withOrgApacheLuceneUtilFstFST_BytesReader:*(a1 + 48)];
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!*(v6 + 72))
  {
    if (a2)
    {
      goto LABEL_8;
    }

LABEL_29:
    JreThrowNullPointerException();
  }

  if (!a2)
  {
    goto LABEL_29;
  }

  if (*(a2 + 16) != *(v6 + 80))
  {
    return 0;
  }

LABEL_8:
  if (*(a2 + 16) < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(a2 + 24);
    if (!v8)
    {
      goto LABEL_29;
    }

    v9 = *(v8 + 8);
    if (v7 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v7);
    }

    v10 = *(v8 + 24 + 8 * v7);
    if (!v10)
    {
      goto LABEL_29;
    }

    v11 = *(a1 + 40);
    if (*(v10 + 8) != *(v11 + 8))
    {
      return 0;
    }

    v12 = *(v10 + 32);
    if (!v12)
    {
      goto LABEL_29;
    }

    result = [v12 isEqual:*(v11 + 16)];
    if (!result)
    {
      return result;
    }

    Weak = objc_loadWeak((v10 + 16));
    objc_opt_class();
    if (!Weak)
    {
      goto LABEL_29;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v15 = *(a1 + 40);
    if (Weak[1] != *(v15 + 32))
    {
      return 0;
    }

    v16 = *(v10 + 40);
    if (!v16)
    {
      goto LABEL_29;
    }

    result = [v16 isEqual:*(v15 + 48)];
    if (!result)
    {
      return result;
    }

    v17 = *(v10 + 24);
    if (v17 != [*(a1 + 40) isFinal])
    {
      return 0;
    }

    if ([*(a1 + 40) isLast])
    {
      return (v7 - *(a2 + 16) == -1);
    }

    [*(a1 + 32) readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:*(a1 + 40) withOrgApacheLuceneUtilFstFST_BytesReader:*(a1 + 48)];
    if (++v7 >= *(a2 + 16))
    {
      return 0;
    }
  }
}

uint64_t sub_10010B93C(uint64_t a1)
{
  if (!a1)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  if (*(a1 + 16) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(a1 + 24);
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = *(v4 + 8);
    if (v2 >= v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v5, v2);
    }

    v6 = *(v4 + 24 + 8 * v2);
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *(v6 + 8);
    Weak = objc_loadWeak((v6 + 16));
    objc_opt_class();
    if (!Weak)
    {
      goto LABEL_18;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v9 = *(v6 + 32);
    if (!v9)
    {
      goto LABEL_18;
    }

    v10 = Weak[1];
    v11 = [v9 hash];
    v12 = *(v6 + 40);
    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = 31 * (31 * (31 * (v7 - v3 + 32 * v3) + ((v10 ^ (v10 << 32)) >> 32)) + v11);
    v14 = [v12 hash];
    if (*(v6 + 24))
    {
      v3 = v13 + v14 + 17;
    }

    else
    {
      v3 = v13 + v14;
    }

    ++v2;
  }

  while (v2 < *(a1 + 16));
  return v3 & 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t sub_10010BB04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (!v3 || ([v3 readFirstRealTargetArcWithLong:a2 withOrgApacheLuceneUtilFstFST_Arc:*(a1 + 40) withOrgApacheLuceneUtilFstFST_BytesReader:*(a1 + 48)], (v4 = *(a1 + 40)) == 0))
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v5 = 0;
  while (1)
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = *(v4 + 8);
    v8 = *(v4 + 32);
    v9 = [v6 hash];
    v10 = *(*(a1 + 40) + 48);
    if (!v10)
    {
      goto LABEL_10;
    }

    v5 = 31 * (31 * (31 * (v7 - v5 + 32 * v5) + ((v8 ^ (v8 << 32)) >> 32)) + v9) + [v10 hash];
    if ([*(a1 + 40) isFinal])
    {
      v5 += 17;
    }

    if ([*(a1 + 40) isLast])
    {
      return v5 & 0x7FFFFFFFFFFFFFFFLL;
    }

    [*(a1 + 32) readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:*(a1 + 40) withOrgApacheLuceneUtilFstFST_BytesReader:*(a1 + 48)];
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_10;
    }
  }
}

id sub_10010BDE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010BB04(a1, a2);
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  v6 = *(a1 + 24) & v4;
  v7 = 1;
  while ([v5 getWithLong:v6])
  {
    v6 = *(a1 + 24) & (v6 + v7);
    v5 = *(a1 + 8);
    ++v7;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v8 = *(a1 + 8);

  return [v8 setWithLong:v6 withLong:a2];
}

OrgApacheLuceneUtilFstNodeHash *new_OrgApacheLuceneUtilFstNodeHash_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(void *a1, void *a2)
{
  v4 = [OrgApacheLuceneUtilFstNodeHash alloc];
  OrgApacheLuceneUtilFstNodeHash_initWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(v4, a1, a2);
  return v4;
}

OrgApacheLuceneUtilPackedBulkOperationPacked6 *new_OrgApacheLuceneUtilPackedBulkOperationPacked6_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked6 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 6);
  return v0;
}

OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector *OrgApacheLuceneSearchTopScoreDocCollector_createWithInt_withOrgApacheLuceneSearchScoreDoc_(uint64_t a1, void *a2)
{
  if (a1 <= 0)
  {
    v6 = new_JavaLangIllegalArgumentException_initWithNSString_(@"numHits must be > 0; please use TotalHitCountCollector if you just need the total hit count");
    objc_exception_throw(v6);
  }

  if (a2)
  {
    v4 = [OrgApacheLuceneSearchTopScoreDocCollector_PagingTopScoreDocCollector alloc];
    OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(v4, a1);
    JreStrongAssign(&v4->after_, a2);
    v4->collectedHits_ = 0;
  }

  else
  {
    v4 = [OrgApacheLuceneSearchTopScoreDocCollector_SimpleTopScoreDocCollector alloc];
    OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(v4, a1);
  }

  return v4;
}

id OrgApacheLuceneSearchTopScoreDocCollector_initWithInt_(uint64_t a1, uint64_t a2)
{
  v3 = new_OrgApacheLuceneSearchHitQueue_initWithInt_withBoolean_(a2, 1);
  OrgApacheLuceneSearchTopDocsCollector_initWithOrgApacheLuceneUtilPriorityQueue_(a1, v3);
  v4 = *(a1 + 8);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 top];

  return JreStrongAssign((a1 + 24), v5);
}

OrgApacheLuceneCodecsLucene50Lucene50DocValuesFormat *new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesFormat_init()
{
  v0 = [OrgApacheLuceneCodecsLucene50Lucene50DocValuesFormat alloc];
  OrgApacheLuceneCodecsDocValuesFormat_initWithNSString_(v0, @"Lucene50");
  return v0;
}

id OrgApacheLuceneStoreByteArrayDataOutput_init(void *a1, uint64_t a2)
{
  OrgApacheLuceneStoreDataOutput_init(a1, a2);
  if ((atomic_load_explicit(OrgApacheLuceneUtilBytesRef__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000A23D0();
  }

  v3 = OrgApacheLuceneUtilBytesRef_EMPTY_BYTES_;

  return [a1 resetWithByteArray:v3];
}

OrgApacheLuceneStoreByteArrayDataOutput *new_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(uint64_t a1)
{
  v2 = [OrgApacheLuceneStoreByteArrayDataOutput alloc];
  OrgApacheLuceneStoreDataOutput_init(v2, v3);
  [(OrgApacheLuceneStoreByteArrayDataOutput *)v2 resetWithByteArray:a1];
  return v2;
}

id sub_10010E82C(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_13;
  }

  v4 = [a2 lastChild];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  if ([v4 hasChildren])
  {
    sub_10010E82C(a1, v5);
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v7 = [v6 getWithId:v5];
  if (v7)
  {

    return [a2 replaceLastChildWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:v7];
  }

  else
  {
    v8 = *(a1 + 8);

    return [v8 putWithId:v5 withId:v5];
  }
}

id sub_10010E8DC(_BYTE *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  result = [a2 length];
  if (result > a3)
  {
    v7 = result;
    while (1)
    {
      v8 = JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(a2, a3);
      if (!a1)
      {
        break;
      }

      v9 = v8;
      a1 = [a1 newStateWithInt:v8];
      result = JavaLangCharacter_charCountWithInt_(v9);
      a3 = (result + a3);
      if (a3 >= v7)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    JreThrowNullPointerException();
  }

LABEL_6:
  if (!a1)
  {
    goto LABEL_8;
  }

  a1[24] = 1;
  return result;
}

id OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_buildWithJavaUtilCollection_(void *a1)
{
  if ((atomic_load_explicit(&OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10010F5FC();
  }

  v2 = [OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder alloc];
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_init(v2);
  v3 = v2;
  v4 = [IOSCharArray arrayWithLength:0];
  v5 = new_OrgApacheLuceneUtilCharsRef_init();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  if (!a1)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v6 = v5;
  v7 = [a1 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v14 = v7;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(a1);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if (!v17)
        {
          goto LABEL_13;
        }

        v4 = OrgApacheLuceneUtilArrayUtil_growWithCharArray_withInt_(v4, *(v17 + 20), v8, v9, v10, v11, v12, v13);
        v18 = OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithOrgApacheLuceneUtilBytesRef_withCharArray_(v17, v4);
        JreStrongAssign(&v6->chars_, v4);
        v6->length_ = v18;
        [(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *)v3 addWithOrgApacheLuceneUtilCharsRef:v6, v23];
      }

      v14 = [a1 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v19 = new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
  v20 = [(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *)v3 complete];
  v21 = new_JavaUtilIdentityHashMap_init();
  sub_10010ED48(v19, v20, v21);
  return [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)v19 finish];
}

void *OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_init(uint64_t a1)
{
  v2 = new_JavaUtilHashMap_init();
  JreStrongAssignAndConsume((a1 + 8), v2);
  v3 = sub_10010F5AC();

  return JreStrongAssignAndConsume((a1 + 16), v3);
}

id sub_10010ED48(void *a1, uint64_t a2, void *a3)
{
  if (atomic_load_explicit(&OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_10010F5FC();
    if (!a3)
    {
      goto LABEL_20;
    }
  }

  v6 = [a3 getWithId:a2];
  if (!v6)
  {
    if (!a1)
    {
      goto LABEL_20;
    }

    v7 = JavaLangInteger_valueOfWithInt_([a1 createState]);
    v8 = [(JavaLangInteger *)v7 intValue];
    if (!a2)
    {
      goto LABEL_20;
    }

    [a1 setAcceptWithInt:v8 withBoolean:*(a2 + 24)];
    [a3 putWithId:a2 withId:v7];
    v9 = *(a2 + 16);
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = (v9 + 24);
    v11 = v9 + 24 + 8 * *(v9 + 8);
    if (v9 + 24 < v11)
    {
      v12 = 0;
      v13 = *(a2 + 8);
      while (1)
      {
        v14 = *v10++;
        v15 = [(JavaLangInteger *)v7 intValue];
        v16 = sub_10010ED48(a1, v14, a3);
        if (!v13)
        {
          break;
        }

        v17 = v16;
        v18 = *(v13 + 8);
        if ((v12 & 0x80000000) != 0 || v12 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v12);
        }

        [a1 addTransitionWithInt:v15 withInt:v17 withInt:*(v13 + 12 + 4 * v12)];
        v12 = (v12 + 1);
        if (v10 >= v11)
        {
          goto LABEL_15;
        }
      }

LABEL_20:
      JreThrowNullPointerException();
    }

LABEL_15:
    v6 = v7;
  }

  return [(JavaLangInteger *)v6 intValue];
}

uint64_t OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10010F608();
  }

  if (qword_100554720 != -1)
  {
    sub_10010F614();
  }

  return qword_100554718;
}

OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *sub_10010F5AC()
{
  v0 = [OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State alloc];
  JreStrongAssign(&v0->labels_, qword_100554708);
  JreStrongAssign(&v0->states_, qword_100554710);
  return v0;
}

uint64_t OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_initWithInt_withFloat_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  if (a9 <= 0.0 || a9 >= 1.0)
  {
    v10 = JreStrcat("$F", a2, a3, a4, a5, a6, a7, a8, @"minSizeRatio must be in ]0, 1[, got ");
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  *(result + 8) = a2;
  *(result + 12) = a9;
  return result;
}

OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments *new_OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_initWithInt_withFloat_(uint64_t a1, float a2)
{
  v4 = [OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments alloc];
  OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_initWithInt_withFloat_(v4, a1, v5, v6, v7, v8, v9, v10, a2);
  return v4;
}

id OrgApacheLuceneIndexStandardDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withBoolean_(uint64_t a1, void *a2, _DWORD *a3, void *a4, void *a5, char a6)
{
  OrgApacheLuceneIndexDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_(a1, a2, a3);
  JreStrongAssign((a1 + 88), a4);
  result = JreStrongAssign((a1 + 96), a5);
  *(a1 + 104) = a6;
  return result;
}

id OrgApacheLuceneIndexStandardDirectoryReader_openWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexCommit_(void *a1, uint64_t a2)
{
  v4 = [OrgApacheLuceneIndexStandardDirectoryReader__1 alloc];
  OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile_initWithOrgApacheLuceneStoreDirectory_(v4, a1);
  v5 = v4;

  return [(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *)v5 runWithOrgApacheLuceneIndexIndexCommit:a2];
}

OrgApacheLuceneIndexStandardDirectoryReader *OrgApacheLuceneIndexStandardDirectoryReader_openWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withBoolean_(id *a1, void *a2, char a3)
{
  if (!a2 || (v5 = [a2 size], v6 = new_JavaUtilArrayList_init(), !a1))
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  v18 = [a1 getDirectory];
  v20 = [a2 clone];
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [a2 infoWithInt:v9];
      v11 = a1[6];
      if (!v11)
      {
        JreThrowNullPointerException();
      }

      v12 = [v11 getWithOrgApacheLuceneIndexSegmentCommitInfo:v10 withBoolean:1];
      if (!v12)
      {
        break;
      }

      if ((atomic_load_explicit(OrgApacheLuceneStoreIOContext__initialized, memory_order_acquire) & 1) == 0)
      {
        objc_opt_class();
      }

      v13 = [v12 getReadOnlyCloneWithOrgApacheLuceneStoreIOContext:OrgApacheLuceneStoreIOContext_READ_];
      v14 = v13;
      if (!v13)
      {
        break;
      }

      if ([v13 numDocs] > 0 || objc_msgSend(a1, "getKeepFullyDeletedSegments"))
      {
        [(JavaUtilArrayList *)v7 addWithId:v14];
        v8 = (v8 + 1);
      }

      else
      {
        [v14 decRef];
        if (!v20)
        {
          break;
        }

        [v20 removeWithInt:v8];
      }

      [a1[6] release__WithOrgApacheLuceneIndexReadersAndUpdates:v12];
      v9 = (v9 + 1);
      if (v5 == v9)
      {
        goto LABEL_18;
      }
    }

    JreThrowNullPointerException();
  }

LABEL_18:
  [a1 incRefDeleterWithOrgApacheLuceneIndexSegmentInfos:v20];
  v15 = [(JavaUtilArrayList *)v7 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)v7 size] type:OrgApacheLuceneIndexSegmentReader_class_()]];
  v16 = [OrgApacheLuceneIndexStandardDirectoryReader alloc];
  OrgApacheLuceneIndexStandardDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withBoolean_(v16, v18, v15, a1, v20, a3);
  return v16;
}

void sub_10010FBF0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exc_buf);
  }

  objc_begin_catch(exc_buf);
  a13 = 0u;
  a14 = 0u;
  a15 = 0u;
  a16 = 0u;
  v18 = [v17 countByEnumeratingWithState:&a13 objects:&a17 count:16];
  if (v18)
  {
    v19 = *a14;
    do
    {
      v20 = 0;
      do
      {
        if (*a14 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&a13 + 1) + 8 * v20);
        if (!v21)
        {
          JreThrowNullPointerException();
        }

        [v21 decRef];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v22 = [v17 countByEnumeratingWithState:&a13 objects:&a17 count:16];
      v18 = v22;
    }

    while (v22);
  }

  objc_exception_rethrow();
}

void sub_10010FD08(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x10010FD0CLL);
  }

  objc_terminate();
}

id sub_10010FF54(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      if ([v4 nrtIsCurrentWithOrgApacheLuceneIndexSegmentInfos:*(a1 + 96)])
      {
        return 0;
      }

      v5 = [*(a1 + 88) getReaderWithBoolean:*(a1 + 104)];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 getVersion];
        v8 = *(a1 + 96);
        if (v8)
        {
          if (v7 != [v8 getVersion])
          {
            return v6;
          }

          [v6 decRef];
          return 0;
        }
      }
    }

    JreThrowNullPointerException();
  }

  return sub_1001101B4(a1, a2);
}

id sub_10011001C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 80);
    if (v4 != [a2 getDirectory])
    {
      v7 = new_JavaIoIOException_initWithNSString_(@"the specified commit does not match the specified Directory");
      objc_exception_throw(v7);
    }

    if (*(a1 + 96))
    {
      v5 = [a2 getSegmentsFileName];
      if (!v5)
      {
        JreThrowNullPointerException();
      }

      if ([v5 isEqual:{objc_msgSend(*(a1 + 96), "getSegmentsFileName")}])
      {
        return 0;
      }
    }
  }

  else if ([a1 isCurrent])
  {
    return 0;
  }

  return sub_1001101B4(a1, a2);
}

id sub_1001101B4(void *a1, uint64_t a2)
{
  v4 = a1[10];
  v5 = [OrgApacheLuceneIndexStandardDirectoryReader__2 alloc];
  JreStrongAssign(&v5->this$0_, a1);
  OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile_initWithOrgApacheLuceneStoreDirectory_(v5, v4);
  v6 = v5;

  return [(OrgApacheLuceneIndexSegmentInfos_FindSegmentsFile *)v6 runWithOrgApacheLuceneIndexIndexCommit:a2];
}

void sub_100110678(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  objc_begin_catch(a1);
  if (a14)
  {
    v14 = (a14 + 24);
    v15 = a14 + 24 + 8 * *(a14 + 8);
    while (v14 < v15)
    {
      v17 = *v14++;
      v16 = v17;
      if (v17)
      {
        [v16 decRef];
      }
    }

    objc_exception_rethrow();
  }

  JreThrowNullPointerException();
}

OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit *new_OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(void *a1, void *a2, void *a3)
{
  v6 = [OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit alloc];
  OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(v6, a1, a2, a3);
  return v6;
}

id OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(uint64_t a1, void *a2, void *a3, void *a4)
{
  OrgApacheLuceneIndexIndexCommit_init();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign((a1 + 40), [a3 getSegmentsFileName]);
  JreStrongAssign((a1 + 16), a4);
  JreStrongAssign((a1 + 32), [a3 getUserData]);
  v8 = JavaUtilCollections_unmodifiableCollectionWithJavaUtilCollection_([a3 filesWithBoolean:1]);
  JreStrongAssign((a1 + 8), v8);
  *(a1 + 24) = [a3 getGeneration];
  *(a1 + 48) = [a3 size];

  return JreStrongAssign((a1 + 56), a2);
}

void sub_100110E7C(void *a1)
{
  objc_begin_catch(a1);
  OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_(v1);
  objc_exception_rethrow();
}

id OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(void *a1, void *a2)
{
  v3 = JavaUtilArrays_asListWithNSObjectArray_(a2);
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = v3;
  if ([(JavaUtilArrays_ArrayList *)v3 size]== 1)
  {
    if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000280F8();
    }

    if ([(JavaUtilArrays_ArrayList *)v4 containsWithId:OrgLukhnosPortmobileFileStandardOpenOptionEnum_values_])
    {
      if (a1)
      {
        v5 = @"r";
        goto LABEL_18;
      }

LABEL_21:
      JreThrowNullPointerException();
    }
  }

  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000280F8();
  }

  if (![(JavaUtilArrays_ArrayList *)v4 containsWithId:qword_100557488])
  {
    v15 = JreStrcat("$@", v6, v7, v8, v9, v10, v11, v12, @"Unknown options: ");
    v16 = new_JavaIoIOException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  if (OrgLukhnosPortmobileFileFiles_notExistsWithOrgLukhnosPortmobileFilePath_(a1))
  {
    if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000280F8();
    }

    if ([(JavaUtilArrays_ArrayList *)v4 containsWithId:qword_100557490])
    {
      OrgLukhnosPortmobileFileFiles_createFileWithOrgLukhnosPortmobileFilePath_(a1);
    }
  }

  if (!a1)
  {
    goto LABEL_21;
  }

  v5 = @"rw";
LABEL_18:
  v13 = new_JavaIoRandomAccessFile_initWithJavaIoFile_withNSString_([a1 toFile], v5);

  return [(JavaIoRandomAccessFile *)v13 getChannel];
}

id ComAppleContextkitUtilObjcIterator_initWithId_(uint64_t a1, void *a2)
{
  JreStrongAssign((a1 + 8), [a2 objectEnumerator]);
  v3 = [*(a1 + 8) nextObject];

  return JreStrongAssign((a1 + 16), v3);
}

id OrgApacheLuceneCodecsLucene50Lucene50SkipReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withBoolean_withBoolean_withBoolean_(id *a1, void *a2, int a3, int a4, int a5, int a6)
{
  OrgApacheLuceneCodecsMultiLevelSkipListReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_(a1, a2, a3, 128, 8);
  JreStrongAssignAndConsume(a1 + 13, [IOSLongArray newArrayWithLength:a3]);
  if (a4)
  {
    JreStrongAssignAndConsume(a1 + 14, [IOSLongArray newArrayWithLength:a3]);
    JreStrongAssignAndConsume(a1 + 16, [IOSIntArray newArrayWithLength:a3]);
    if (a6)
    {
      JreStrongAssignAndConsume(a1 + 17, [IOSIntArray newArrayWithLength:a3]);
LABEL_9:
      v13 = [IOSLongArray newArrayWithLength:a3];

      return JreStrongAssignAndConsume(a1 + 15, v13);
    }

    JreStrongAssign(a1 + 17, 0);
    if (a5)
    {
      goto LABEL_9;
    }

    v11 = a1 + 15;
  }

  else
  {
    v11 = a1 + 14;
  }

  return JreStrongAssign(v11, 0);
}

OrgApacheLuceneCodecsLucene50Lucene50SkipReader *new_OrgApacheLuceneCodecsLucene50Lucene50SkipReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withBoolean_withBoolean_withBoolean_(void *a1, int a2, int a3, int a4, int a5)
{
  v10 = [OrgApacheLuceneCodecsLucene50Lucene50SkipReader alloc];
  OrgApacheLuceneCodecsLucene50Lucene50SkipReader_initWithOrgApacheLuceneStoreIndexInput_withInt_withBoolean_withBoolean_withBoolean_(&v10->super.super.isa, a1, a2, a3, a4, a5);
  return v10;
}

uint64_t OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(uint64_t a1, int a2, float a3)
{
  v3 = a2 * a3;
  v4 = v3;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 < 0.0)
  {
    v5 = 0x8000000000000000;
  }

  if (v4 == 0x8000000000000000)
  {
    v4 = v5;
  }

  return v4 + a1;
}

id OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(void *a1, uint64_t a2, signed int a3, uint64_t a4, int a5)
{
  v10 = off_1003E8D18;
  if (a2 >= 2)
  {
    v10 = off_1003E8D10;
  }

  v11 = objc_alloc(*v10);
  sub_100111E68(v11, a1, a2, a3, a4, a5);

  return v11;
}

id sub_100111E68(uint64_t a1, void *a2, uint64_t a3, signed int a4, uint64_t a5, int a6)
{
  OrgApacheLuceneUtilLongValues_init(a1);
  *(a1 + 16) = a5;
  *(a1 + 8) = OrgApacheLuceneUtilPackedPackedInts_checkBlockSizeWithInt_withInt_withInt_(a4, 64, 0x8000000, v11, v12, v13, v14, v15);
  *(a1 + 12) = a4 - 1;
  v16 = OrgApacheLuceneUtilPackedPackedInts_numBlocksWithLong_withInt_(a5, a4);
  JreStrongAssignAndConsume((a1 + 24), [IOSLongArray newArrayWithLength:v16]);
  JreStrongAssignAndConsume((a1 + 32), [IOSFloatArray newArrayWithLength:v16]);
  v17 = [IOSObjectArray newArrayWithLength:v16 type:OrgApacheLuceneUtilPackedPackedInts_Reader_class_()];
  result = JreStrongAssignAndConsume((a1 + 40), v17);
  if (v16 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v50 = a4;
    v21 = OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized;
    v49 = v16;
    v45 = a4;
    v47 = a3;
    do
    {
      if (a3 > 1)
      {
        if (!a2)
        {
          goto LABEL_30;
        }

        v22 = [a2 readZLong];
        v23 = *(a1 + 24);
        v24 = *(v23 + 8);
        if (v19 >= v24)
        {
LABEL_27:
          IOSArray_throwOutOfBoundsWithMsg(v24, v19);
        }
      }

      else
      {
        if (!a2)
        {
          goto LABEL_30;
        }

        v22 = [a2 readVLong];
        v23 = *(a1 + 24);
        v24 = *(v23 + 8);
        if (v19 >= v24)
        {
          goto LABEL_27;
        }
      }

      *(v23 + 16 + 8 * v19) = v22;
      *&v25 = JavaLangFloat_intBitsToFloatWithInt_([a2 readInt]);
      v26 = *(a1 + 32);
      v27 = *(v26 + 8);
      if (v19 >= v27)
      {
        IOSArray_throwOutOfBoundsWithMsg(v27, v19);
      }

      *(v26 + 12 + 4 * v19) = LODWORD(v25);
      v28 = [a2 readVInt];
      if (v28 >= 65)
      {
        v44 = new_JavaIoIOException_initWithNSString_(@"Corrupted");
        objc_exception_throw(v44);
      }

      v29 = v28;
      if (v28)
      {
        v30 = v21;
        v34 = JavaLangMath_minWithLong_withLong_(v50, a5);
        if (a6)
        {
          v46 = [a2 getFilePointer];
          v38 = *(a1 + 40);
          if ((atomic_load_explicit(v21, memory_order_acquire) & 1) == 0)
          {
            sub_100003648();
          }

          DirectReaderNoHeaderWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getDirectReaderNoHeaderWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(a2, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], v47, v34, v29, v35, v36, v37);
          IOSObjectArray_Set(v38, v19, DirectReaderNoHeaderWithOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt);
          if ((atomic_load_explicit(v21, memory_order_acquire) & 1) == 0)
          {
            sub_100003648();
          }

          if (!OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0])
          {
LABEL_30:
            JreThrowNullPointerException();
          }

          a3 = v47;
          result = [a2 seekWithLong:{&v46[objc_msgSend(OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], "byteCountWithInt:withInt:withInt:", v47, v34, v29)]}];
        }

        else
        {
          v42 = *(a1 + 40);
          if ((atomic_load_explicit(v30, memory_order_acquire) & 1) == 0)
          {
            sub_100003648();
          }

          ReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt = OrgApacheLuceneUtilPackedPackedInts_getReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt_(a2, OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0], a3, v34, v29, v31, v32, v33);
          result = IOSObjectArray_Set(v42, v19, ReaderNoHeaderWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withInt_withInt_withInt);
        }

        v21 = v30;
      }

      else
      {
        v40 = *(a1 + 40);
        v41 = new_OrgApacheLuceneUtilPackedPackedInts_NullReader_initWithInt_(v45);
        result = IOSObjectArray_SetAndConsume(v40, v19, v41);
      }

      v20 += v29;
      ++v19;
      a5 -= v50;
    }

    while (v49 != v19);
  }

  *(a1 + 48) = v20;
  return result;
}

OrgApacheLuceneSearchDocIdSetIterator_$2 *OrgApacheLuceneSearchDocIdSetIterator_allWithInt_(int a1)
{
  v2 = [OrgApacheLuceneSearchDocIdSetIterator__2 alloc];
  v2->val$maxDoc_ = a1;
  v2->doc_ = -1;

  return v2;
}

OrgApacheLuceneSearchDocIdSetIterator_$1 *OrgApacheLuceneSearchDocIdSetIterator_empty()
{
  v0 = [OrgApacheLuceneSearchDocIdSetIterator__1 alloc];
  v0->exhausted_ = 0;

  return v0;
}

uint64_t OrgApacheLuceneSearchDocIdSetIterator_class_()
{
  if (qword_100554730 != -1)
  {
    sub_100112FB8();
  }

  return qword_100554728;
}

OrgApacheLuceneUtilPackedBulkOperationPacked19 *new_OrgApacheLuceneUtilPackedBulkOperationPacked19_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked19 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 19);
  return v0;
}

void sub_1001177F4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_100117858(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100117860);
  }

  objc_terminate();
}

id sub_10011786C(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneStoreNativeFSLockFactory__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100117E88();
  }

  if (!qword_100554738 || !a1)
  {
    JreThrowNullPointerException();
  }

  result = [qword_100554738 removeWithId:{objc_msgSend(a1, "description")}];
  if ((result & 1) == 0)
  {
    v10 = JreStrcat("$@", v3, v4, v5, v6, v7, v8, v9, @"Lock path was cleared but never marked as held: ");
    v11 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  return result;
}

id OrgApacheLuceneStoreNativeFSLockFactory_NativeFSLock_initWithJavaNioChannelsFileLock_withJavaNioChannelsFileChannel_withOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileAttributeFileTime_(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  OrgApacheLuceneStoreLock_init(a1);
  JreStrongAssign(a1 + 1, a2);
  JreStrongAssign(a1 + 2, a3);
  JreStrongAssign(a1 + 3, a4);

  return JreStrongAssign(a1 + 4, a5);
}

void sub_100117D64(void *a1)
{
  objc_end_catch();
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x100117C58);
}

OrgApacheLuceneUtilPackedBulkOperationPacked15 *new_OrgApacheLuceneUtilPackedBulkOperationPacked15_init()
{
  v0 = [OrgApacheLuceneUtilPackedBulkOperationPacked15 alloc];
  OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(v0, 15);
  return v0;
}

OrgApacheLuceneIndexSingletonSortedNumericDocValues *OrgApacheLuceneIndexDocValues_emptySortedNumericWithInt_(int a1)
{
  v2 = OrgApacheLuceneIndexDocValues_emptyNumeric();
  v3 = new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_(a1);
  v4 = new_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(v2, v3);

  return v4;
}

OrgApacheLuceneIndexSingletonSortedSetDocValues *OrgApacheLuceneIndexDocValues_singletonWithOrgApacheLuceneIndexSortedDocValues_(void *a1)
{
  v1 = new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(a1);

  return v1;
}

id OrgApacheLuceneIndexDocValues_unwrapSingletonWithOrgApacheLuceneIndexSortedSetDocValues_(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [a1 getSortedDocValues];
}

id OrgApacheLuceneIndexDocValues_unwrapSingletonWithOrgApacheLuceneIndexSortedNumericDocValues_(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [a1 getNumericDocValues];
}

id OrgApacheLuceneIndexDocValues_unwrapSingletonBitsWithOrgApacheLuceneIndexSortedNumericDocValues_(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [a1 getDocsWithField];
}

OrgApacheLuceneIndexSingletonSortedNumericDocValues *OrgApacheLuceneIndexDocValues_singletonWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(void *a1, void *a2)
{
  v2 = new_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(a1, a2);

  return v2;
}

OrgApacheLuceneIndexDocValues_$4 *OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedDocValues_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneIndexDocValues__4 alloc];
  JreStrongAssign(&v4->val$dv_, a1);
  v4->val$maxDoc_ = a2;

  return v4;
}

OrgApacheLuceneIndexDocValues_$5 *OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedSetDocValues_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneIndexDocValues__5 alloc];
  JreStrongAssign(&v4->val$dv_, a1);
  v4->val$maxDoc_ = a2;

  return v4;
}

OrgApacheLuceneIndexDocValues_$6 *OrgApacheLuceneIndexDocValues_docsWithValueWithOrgApacheLuceneIndexSortedNumericDocValues_withInt_(void *a1, int a2)
{
  v4 = [OrgApacheLuceneIndexDocValues__6 alloc];
  JreStrongAssign(&v4->val$dv_, a1);
  v4->val$maxDoc_ = a2;

  return v4;
}

OrgApacheLuceneIndexDocValues_$2 *OrgApacheLuceneIndexDocValues_getNumericWithOrgApacheLuceneIndexLeafReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 getNumericDocValuesWithNSString:a2];
  if (!result)
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    v6 = qword_100557A78;
    v5 = [IOSObjectArray arrayWithObjects:&v6 count:1 type:OrgApacheLuceneIndexDocValuesTypeEnum_class_()];
    sub_10011CB9C(a1, a2, v5);
    return OrgApacheLuceneIndexDocValues_emptyNumeric();
  }

  return result;
}

OrgApacheLuceneIndexDocValues_$1 *OrgApacheLuceneIndexDocValues_getBinaryWithOrgApacheLuceneIndexLeafReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 getBinaryDocValuesWithNSString:a2];
  if (!result)
  {
    result = [a1 getSortedDocValuesWithNSString:a2];
    if (!result)
    {
      if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10001B990();
      }

      v6[0] = qword_100557A80;
      if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10001B990();
      }

      v6[1] = qword_100557A88;
      v5 = [IOSObjectArray arrayWithObjects:v6 count:2 type:OrgApacheLuceneIndexDocValuesTypeEnum_class_()];
      sub_10011CB9C(a1, a2, v5);
      return OrgApacheLuceneIndexDocValues_emptyBinary();
    }
  }

  return result;
}

OrgApacheLuceneIndexDocValues_$3 *OrgApacheLuceneIndexDocValues_getSortedWithOrgApacheLuceneIndexLeafReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 getSortedDocValuesWithNSString:a2];
  if (!result)
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    v6 = qword_100557A88;
    v5 = [IOSObjectArray arrayWithObjects:&v6 count:1 type:OrgApacheLuceneIndexDocValuesTypeEnum_class_()];
    sub_10011CB9C(a1, a2, v5);
    return OrgApacheLuceneIndexDocValues_emptySorted();
  }

  return result;
}

OrgApacheLuceneIndexSingletonSortedNumericDocValues *OrgApacheLuceneIndexDocValues_getSortedNumericWithOrgApacheLuceneIndexLeafReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 getSortedNumericDocValuesWithNSString:a2];
  if (!result)
  {
    v5 = [a1 getNumericDocValuesWithNSString:a2];
    if (v5)
    {
      v6 = new_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(v5, [a1 getDocsWithFieldWithNSString:a2]);

      return v6;
    }

    else
    {
      if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10001B990();
      }

      v8[0] = qword_100557A90;
      if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10001B990();
      }

      v8[1] = qword_100557A78;
      v7 = [IOSObjectArray arrayWithObjects:v8 count:2 type:OrgApacheLuceneIndexDocValuesTypeEnum_class_()];
      sub_10011CB9C(a1, a2, v7);
      return OrgApacheLuceneIndexDocValues_emptySortedNumericWithInt_([a1 maxDoc]);
    }
  }

  return result;
}

OrgApacheLuceneIndexSingletonSortedSetDocValues *OrgApacheLuceneIndexDocValues_getSortedSetWithOrgApacheLuceneIndexLeafReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 getSortedSetDocValuesWithNSString:a2];
  if (!result)
  {
    v5 = [a1 getSortedDocValuesWithNSString:a2];
    if (v5)
    {
      v6 = new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(v5);

      return v6;
    }

    else
    {
      if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10001B990();
      }

      v9[0] = qword_100557A88;
      if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_10001B990();
      }

      v9[1] = qword_100557A98;
      v7 = [IOSObjectArray arrayWithObjects:v9 count:2 type:OrgApacheLuceneIndexDocValuesTypeEnum_class_()];
      sub_10011CB9C(a1, a2, v7);
      v8 = OrgApacheLuceneIndexDocValues_emptySorted();
      return new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(v8);
    }
  }

  return result;
}

OrgApacheLuceneUtilBits_MatchNoBits *OrgApacheLuceneIndexDocValues_getDocsWithFieldWithOrgApacheLuceneIndexLeafReader_withNSString_(void *a1, uint64_t a2)
{
  if (!a1)
  {
    JreThrowNullPointerException();
  }

  result = [a1 getDocsWithFieldWithNSString:a2];
  if (!result)
  {
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    v6 = qword_100557A80;
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    v7 = qword_100557A78;
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    v8 = qword_100557A88;
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    v9 = qword_100557A90;
    if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10001B990();
    }

    v10 = qword_100557A98;
    v5 = [IOSObjectArray arrayWithObjects:&v6 count:5 type:OrgApacheLuceneIndexDocValuesTypeEnum_class_()];
    sub_10011CB9C(a1, a2, v5);
    return new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_([a1 maxDoc]);
  }

  return result;
}

OrgApacheLuceneIndexDocValues_$1 *OrgApacheLuceneIndexDocValues_emptyBinary()
{
  v0 = new_OrgApacheLuceneUtilBytesRef_init();
  v1 = [OrgApacheLuceneIndexDocValues__1 alloc];
  JreStrongAssign(&v1->val$empty_, v0);
  OrgApacheLuceneIndexBinaryDocValues_init(v1, v2);

  return v1;
}

OrgApacheLuceneIndexDocValues_$2 *OrgApacheLuceneIndexDocValues_emptyNumeric()
{
  v0 = [OrgApacheLuceneIndexDocValues__2 alloc];
  OrgApacheLuceneIndexNumericDocValues_init(v0, v1);

  return v0;
}

OrgApacheLuceneIndexDocValues_$3 *OrgApacheLuceneIndexDocValues_emptySorted()
{
  v0 = new_OrgApacheLuceneUtilBytesRef_init();
  v1 = [OrgApacheLuceneIndexDocValues__3 alloc];
  JreStrongAssign(&v1->val$empty_, v0);
  OrgApacheLuceneIndexSortedDocValues_init(v1, v2);

  return v1;
}

OrgApacheLuceneIndexSingletonSortedSetDocValues *OrgApacheLuceneIndexDocValues_emptySortedSet()
{
  v0 = OrgApacheLuceneIndexDocValues_emptySorted();
  v1 = new_OrgApacheLuceneIndexSingletonSortedSetDocValues_initWithOrgApacheLuceneIndexSortedDocValues_(v0);

  return v1;
}

id sub_10011CB9C(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v5 = [a1 getFieldInfos];
  if (!v5)
  {
    goto LABEL_7;
  }

  result = [v5 fieldInfoWithNSString:a2];
  if (result)
  {
    [result getDocValuesType];
    if (a3)
    {
      if (*(a3 + 8) == 1)
      {
        v14 = *(a3 + 24);
        v15 = "$@";
        v16 = CFSTR("(expected=");
      }

      else
      {
        JavaUtilArrays_toStringWithNSObjectArray_(a3);
        v15 = "$$";
        v16 = CFSTR("(expected one of ");
      }

      JreStrcat(v15, v7, v8, v9, v10, v11, v12, v13, v16);
      v24 = JreStrcat("$@$$$$$", v17, v18, v19, v20, v21, v22, v23, @"unexpected docvalues type ");
      v25 = new_JavaLangIllegalStateException_initWithNSString_(v24);
      objc_exception_throw(v25);
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return result;
}

id ComAppleProactiveLuceneTopDocsFilter_initWithOrgApacheLuceneSearchTopDocs_(uint64_t a1, uint64_t a2)
{
  OrgApacheLuceneSearchFilter_init();
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a2 + 16);

  return JreStrongAssign((a1 + 12), v4);
}

id OrgApacheLuceneDocumentFieldType_initWithOrgApacheLuceneDocumentFieldType_(uint64_t a1, void *a2)
{
  *(a1 + 9) = 1;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  JreStrongAssign((a1 + 16), OrgApacheLuceneIndexIndexOptionsEnum_values_[0]);
  *(a1 + 36) = 16;
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  JreStrongAssign((a1 + 40), OrgApacheLuceneIndexDocValuesTypeEnum_values_);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  *(a1 + 8) = [a2 stored];
  *(a1 + 9) = [a2 tokenized];
  *(a1 + 10) = [a2 storeTermVectors];
  *(a1 + 11) = [a2 storeTermVectorOffsets];
  *(a1 + 12) = [a2 storeTermVectorPositions];
  *(a1 + 13) = [a2 storeTermVectorPayloads];
  *(a1 + 14) = [a2 omitNorms];
  JreStrongAssign((a1 + 16), [a2 indexOptions]);
  JreStrongAssign((a1 + 24), [a2 numericType]);
  *(a1 + 36) = [a2 numericPrecisionStep];
  v4 = [a2 docValuesType];

  return JreStrongAssign((a1 + 40), v4);
}

id OrgApacheLuceneDocumentFieldType_init(uint64_t a1)
{
  *(a1 + 9) = 1;
  if ((atomic_load_explicit(OrgApacheLuceneIndexIndexOptionsEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100015608();
  }

  JreStrongAssign((a1 + 16), OrgApacheLuceneIndexIndexOptionsEnum_values_[0]);
  *(a1 + 36) = 16;
  if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10001B990();
  }

  v2 = OrgApacheLuceneIndexDocValuesTypeEnum_values_;

  return JreStrongAssign((a1 + 40), v2);
}

OrgApacheLuceneDocumentFieldType *new_OrgApacheLuceneDocumentFieldType_initWithOrgApacheLuceneDocumentFieldType_(void *a1)
{
  v2 = [OrgApacheLuceneDocumentFieldType alloc];
  OrgApacheLuceneDocumentFieldType_initWithOrgApacheLuceneDocumentFieldType_(v2, a1);
  return v2;
}

OrgApacheLuceneDocumentFieldType *new_OrgApacheLuceneDocumentFieldType_init()
{
  v0 = [OrgApacheLuceneDocumentFieldType alloc];
  OrgApacheLuceneDocumentFieldType_init(v0);
  return v0;
}

IOSObjectArray *OrgApacheLuceneDocumentFieldType_NumericTypeEnum_values()
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentFieldType_NumericTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10011E130();
  }

  v0 = OrgApacheLuceneDocumentFieldType_NumericTypeEnum_class_();

  return [IOSObjectArray arrayWithObjects:&OrgApacheLuceneDocumentFieldType_NumericTypeEnum_values_ count:4 type:v0];
}

void *OrgApacheLuceneDocumentFieldType_NumericTypeEnum_valueOfWithNSString_(void *a1)
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentFieldType_NumericTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10011E130();
  }

  v2 = 0;
  while (1)
  {
    v3 = OrgApacheLuceneDocumentFieldType_NumericTypeEnum_values_[v2];
    if ([a1 isEqual:{objc_msgSend(v3, "name")}])
    {
      break;
    }

    if (++v2 == 4)
    {
      objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:a1]);
    }
  }

  return v3;
}

uint64_t OrgApacheLuceneDocumentFieldType_NumericTypeEnum_class_()
{
  if ((atomic_load_explicit(OrgApacheLuceneDocumentFieldType_NumericTypeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10011E130();
  }

  if (qword_100554748 != -1)
  {
    sub_10011E13C();
  }

  return qword_100554740;
}

OrgApacheLuceneUtilAccountables_$2 *OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = JreStrcat("$$@C", a2, a3, a4, a5, a6, a7, a8, a1);
  if (!a2)
  {
    JreThrowNullPointerException();
  }

  v10 = v9;
  v11 = [a2 getChildResources];
  v12 = [a2 ramBytesUsed];

  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(v10, v11, v12);
}

OrgApacheLuceneUtilAccountables_$2 *OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withLong_(void *a1, int64_t a2)
{
  v4 = JavaUtilCollections_emptyList();

  return OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(a1, v4, a2);
}

JavaUtilCollections_UnmodifiableRandomAccessList *OrgApacheLuceneUtilAccountables_namedAccountablesWithNSString_withJavaUtilMap_(uint64_t a1, void *a2)
{
  v4 = new_JavaUtilArrayList_init();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  if (!a2 || (v5 = v4, (v6 = [a2 entrySet]) == 0))
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v7 = v6;
  v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if (!v12)
        {
          goto LABEL_12;
        }

        [*(*(&v29 + 1) + 8 * i) getKey];
        v20 = JreStrcat("$$@C", v13, v14, v15, v16, v17, v18, v19, a1);
        v21 = [v12 getValue];
        [(JavaUtilArrayList *)v5 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(v20, v21, v22, v23, v24, v25, v26, v27)];
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(v5, [OrgApacheLuceneUtilAccountables__1 alloc]);
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(v5);
}

OrgApacheLuceneUtilAccountables_$2 *OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withJavaUtilCollection_withLong_(void *a1, void *a2, int64_t a3)
{
  v6 = [OrgApacheLuceneUtilAccountables__2 alloc];
  v6->val$bytes_ = a3;
  JreStrongAssign(&v6->val$children_, a2);
  JreStrongAssign(&v6->val$description_, a1);

  return v6;
}

void *sub_10011E4D0(void *a1, void *a2, int a3)
{
  v6 = a3 - 1;
  if (a3 > 1)
  {
    if (!a1)
    {
      goto LABEL_18;
    }

    do
    {
      [a1 appendWithNSString:@"    "];
      --v6;
    }

    while (v6);
  }

  if (a3 < 1)
  {
    if (!a1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!a1)
    {
      goto LABEL_18;
    }

    [a1 appendWithNSString:@"|-- "];
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  [a1 appendWithNSString:{objc_msgSend(a2, "description")}];
  [a1 appendWithNSString:@": "];
  [a1 appendWithNSString:{OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_(objc_msgSend(a2, "ramBytesUsed"))}];
  [a1 appendWithNSString:JavaLangSystem_lineSeparator()];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [a2 getChildResources];
  if (!v7)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v8 = v7;
  v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        sub_10011E4D0(a1, *(*(&v14 + 1) + 8 * v12), (a3 + 1));
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return a1;
}

id OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withOrgApacheLuceneUtilFstOutputs_withBoolean_withFloat_withInt_(uint64_t a1, void *a2, void *a3, int a4, int a5, float a6)
{
  *(a1 + 48) = -1;
  JreStrongAssign((a1 + 8), a2);
  JreStrongAssign((a1 + 40), a3);
  *(a1 + 96) = 5;
  JreStrongAssign((a1 + 32), 0);
  v11 = new_OrgApacheLuceneUtilFstBytesStore_initWithInt_(a5);
  JreStrongAssignAndConsume((a1 + 24), v11);
  [*(a1 + 24) writeByteWithByte:0];
  if (a4)
  {
    v12 = new_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(15, 8, a6);
    JreStrongAssignAndConsume((a1 + 80), v12);
    v13 = new_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(1, 8, a6);
    JreStrongAssignAndConsume((a1 + 88), v13);
  }

  else
  {
    JreStrongAssign((a1 + 80), 0);
    JreStrongAssign((a1 + 88), 0);
  }

  JreStrongAssign((a1 + 16), 0);
  *(a1 + 56) = 0;

  return JreStrongAssign((a1 + 64), 0);
}

uint64_t OrgApacheLuceneUtilFstFST_initWithOrgApacheLuceneStoreDataInput_withOrgApacheLuceneUtilFstOutputs_withInt_(uint64_t a1, void *a2, void *a3, int a4)
{
  *(a1 + 48) = -1;
  JreStrongAssign((a1 + 40), a3);
  if ((a4 - 31) <= 0xFFFFFFE1)
  {
    v36 = JreStrcat("$I", v8, v9, v10, v11, v12, v13, v14, @"maxBlockBits should be 1 .. 30; got ");
    v37 = new_JavaLangIllegalArgumentException_initWithNSString_(v36);
    goto LABEL_34;
  }

  *(a1 + 96) = OrgApacheLuceneCodecsCodecUtil_checkHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(a2, @"FST", 3, 5);
  if (!a2)
  {
    goto LABEL_31;
  }

  *(a1 + 56) = [a2 readByte] == 1;
  if ([a2 readByte] != 1)
  {
    v18 = (a1 + 16);
    v19 = 0;
    goto LABEL_12;
  }

  v15 = new_OrgApacheLuceneUtilFstBytesStore_initWithInt_(10);
  v16 = [a2 readVInt];
  [(OrgApacheLuceneStoreDataOutput *)v15 copyBytesWithOrgApacheLuceneStoreDataInput:a2 withLong:v16];
  if (*(a1 + 56) == 1)
  {
    v17 = [(OrgApacheLuceneUtilFstBytesStore *)v15 getForwardReader];
  }

  else
  {
    v20 = [(OrgApacheLuceneUtilFstBytesStore *)v15 getReverseReader];
    v17 = v20;
    if (v16 >= 1)
    {
      if (!v20)
      {
        goto LABEL_31;
      }

      [v20 setPositionWithLong:(v16 - 1)];
    }
  }

  if (!a3)
  {
LABEL_31:
    JreThrowNullPointerException();
  }

  v19 = [a3 readFinalOutputWithOrgApacheLuceneStoreDataInput:v17];
  v18 = (a1 + 16);
LABEL_12:
  JreStrongAssign(v18, v19);
  v21 = [a2 readByte];
  if (v21 == 2)
  {
    v29 = (a1 + 8);
    v30 = &qword_100557B80;
    if (atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire))
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

  if (v21 == 1)
  {
    v29 = (a1 + 8);
    v30 = &qword_100557B78;
    if (atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire))
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

  if (v21)
  {
    v38 = JreStrcat("$B", v22, v23, v24, v25, v26, v27, v28, @"invalid input type ");
    v37 = new_JavaLangIllegalStateException_initWithNSString_(v38);
LABEL_34:
    objc_exception_throw(v37);
  }

  v29 = (a1 + 8);
  v30 = &OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values_;
  if (atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire))
  {
    goto LABEL_18;
  }

LABEL_30:
  objc_opt_class();
LABEL_18:
  JreStrongAssign(v29, *v30);
  if (*(a1 + 56) == 1)
  {
    ReaderWithOrgApacheLuceneStoreDataInput = OrgApacheLuceneUtilPackedPackedInts_getReaderWithOrgApacheLuceneStoreDataInput_(a2);
  }

  else
  {
    ReaderWithOrgApacheLuceneStoreDataInput = 0;
  }

  JreStrongAssign((a1 + 64), ReaderWithOrgApacheLuceneStoreDataInput);
  *(a1 + 48) = [a2 readVLong];
  if (*(a1 + 96) <= 4)
  {
    [a2 readVLong];
    [a2 readVLong];
    [a2 readVLong];
  }

  v32 = [a2 readVLong];
  v33 = (1 << a4);
  if (v32 <= v33)
  {
    JreStrongAssign((a1 + 24), 0);
    JreStrongAssignAndConsume((a1 + 32), [IOSByteArray newArrayWithLength:v32]);
    [a2 readBytesWithByteArray:*(a1 + 32) withInt:0 withInt:*(*(a1 + 32) + 8)];
  }

  else
  {
    v34 = new_OrgApacheLuceneUtilFstBytesStore_initWithOrgApacheLuceneStoreDataInput_withLong_withInt_(a2, v32, v33);
    JreStrongAssignAndConsume((a1 + 24), v34);
    JreStrongAssign((a1 + 32), 0);
  }

  return [OrgApacheLuceneUtilFstFST cacheRootArcs]_0(a1);
}