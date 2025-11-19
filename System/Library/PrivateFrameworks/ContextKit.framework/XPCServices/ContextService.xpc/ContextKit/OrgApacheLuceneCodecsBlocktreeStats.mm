@interface OrgApacheLuceneCodecsBlocktreeStats
- (id)description;
- (void)dealloc;
- (void)endBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:(id)a3;
- (void)termWithOrgApacheLuceneUtilBytesRef:(id)a3;
@end

@implementation OrgApacheLuceneCodecsBlocktreeStats

- (void)endBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:(id)a3
{
  if (!a3)
  {
    goto LABEL_20;
  }

  if (*(a3 + 117) == 1)
  {
    v5 = (a3 + 108);
  }

  else
  {
    v6 = *(a3 + 18);
    if (!v6)
    {
      goto LABEL_20;
    }

    v5 = (v6 + 32);
  }

  v7 = *(a3 + 27);
  v8 = *v5;
  self->totalTermCount_ += v8;
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v18 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v18);
  }

  v10 = v7 == v8 || v8 == 0;
  v11 = 48;
  if (!v10)
  {
    v11 = 44;
  }

  v9 = v8 == 0;
  v12 = 52;
  if (!v9)
  {
    v12 = v11;
  }

  ++*(&self->super.isa + v12);
  ++self->endBlockCount_;
  v13 = *(a3 + 8);
  if (!v13 || (v14 = *(a3 + 6), v15 = *(a3 + 4), v16 = [v13 length], (v17 = *(a3 + 10)) == 0))
  {
LABEL_20:
    JreThrowNullPointerException();
  }

  self->totalBlockOtherBytes_ += v14 - (v15 + v16 + [v17 length]);
}

- (void)termWithOrgApacheLuceneUtilBytesRef:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  self->totalTermBytes_ += *(a3 + 5);
}

- (id)description
{
  v156 = new_JavaIoByteArrayOutputStream_initWithInt_(0x400u);
  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v2 = new_JavaIoPrintStream_initWithJavaIoOutputStream_withBoolean_withNSString_(v156, 0, OrgApacheLuceneUtilIOUtils_UTF_8_);
  v3 = v2;
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoPrintStream *)v2 printlnWithNSString:@"  index FST:"];
  indexNumBytes = self->indexNumBytes_;
  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$J$", v4, v5, v6, v7, v8, v9, v10, @"    ")];
  [(JavaIoPrintStream *)v3 printlnWithNSString:@"  terms:"];
  totalTermCount = self->totalTermCount_;
  v157 = v3;
  [(JavaIoPrintStream *)v3 printlnWithNSString:JreStrcat("$J$", v11, v12, v13, v14, v15, v16, v17, @"    ")];
  totalTermBytes = self->totalTermBytes_;
  if (self->totalTermCount_)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000458CC();
    }

    v26 = JavaUtilLocale_ROOT_;
    v163 = JavaLangDouble_valueOfWithDouble_(self->totalTermBytes_ / self->totalTermCount_);
    v27 = [IOSObjectArray arrayWithObjects:&v163 count:1 type:NSObject_class_()];
    NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v26, @"%.1f", v27);
    JreStrcat("$$$", v28, v29, v30, v31, v32, v33, v34, @" (");
  }

  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$J$$", v18, v19, v20, v21, v22, v23, v24, @"    ")];
  [(JavaIoPrintStream *)v157 printlnWithNSString:@"  blocks:"];
  totalBlockCount = self->totalBlockCount_;
  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$I$", v35, v36, v37, v38, v39, v40, v41, @"    ")];
  termsOnlyBlockCount = self->termsOnlyBlockCount_;
  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$I$", v42, v43, v44, v45, v46, v47, v48, @"    ")];
  subBlocksOnlyBlockCount = self->subBlocksOnlyBlockCount_;
  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$I$", v49, v50, v51, v52, v53, v54, v55, @"    ")];
  mixedBlockCount = self->mixedBlockCount_;
  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$I$", v56, v57, v58, v59, v60, v61, v62, @"    ")];
  floorBlockCount = self->floorBlockCount_;
  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$I$", v63, v64, v65, v66, v67, v68, v69, @"    ")];
  v154 = (self->totalBlockCount_ - self->floorSubBlockCount_);
  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$I$", v70, v71, v72, v73, v74, v75, v76, @"    ")];
  floorSubBlockCount = self->floorSubBlockCount_;
  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$I$", v77, v78, v79, v80, v81, v82, v83, @"    ")];
  totalBlockSuffixBytes = self->totalBlockSuffixBytes_;
  if (self->totalBlockCount_)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000A1594();
    }

    v92 = JavaUtilLocale_ROOT_;
    v162 = JavaLangDouble_valueOfWithDouble_(self->totalBlockSuffixBytes_ / self->totalBlockCount_);
    v93 = [IOSObjectArray arrayWithObjects:&v162 count:1 type:NSObject_class_()];
    NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v92, @"%.1f", v93);
    JreStrcat("$$$", v94, v95, v96, v97, v98, v99, v100, @" (");
  }

  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$J$$", v84, v85, v86, v87, v88, v89, v90, @"    ")];
  totalBlockStatsBytes = self->totalBlockStatsBytes_;
  if (self->totalBlockCount_)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000A1594();
    }

    v109 = JavaUtilLocale_ROOT_;
    v161 = JavaLangDouble_valueOfWithDouble_(self->totalBlockStatsBytes_ / self->totalBlockCount_);
    v110 = [IOSObjectArray arrayWithObjects:&v161 count:1 type:NSObject_class_()];
    NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v109, @"%.1f", v110);
    JreStrcat("$$$", v111, v112, v113, v114, v115, v116, v117, @" (");
  }

  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$J$$", v101, v102, v103, v104, v105, v106, v107, @"    ")];
  totalBlockOtherBytes = self->totalBlockOtherBytes_;
  if (self->totalBlockCount_)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000A1594();
    }

    v126 = JavaUtilLocale_ROOT_;
    v160 = JavaLangDouble_valueOfWithDouble_(self->totalBlockOtherBytes_ / self->totalBlockCount_);
    v127 = [IOSObjectArray arrayWithObjects:&v160 count:1 type:NSObject_class_()];
    NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v126, @"%.1f", v127);
    JreStrcat("$$$", v128, v129, v130, v131, v132, v133, v134, @" (");
  }

  [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$J$$", v118, v119, v120, v121, v122, v123, v124, @"    ")];
  if (self->totalBlockCount_)
  {
    [(JavaIoPrintStream *)v157 printlnWithNSString:@"    by prefix length:"];
    blockCountByPrefixLen = self->blockCountByPrefixLen_;
    if (!blockCountByPrefixLen)
    {
LABEL_33:
      JreThrowNullPointerException();
    }

    v136 = 0;
    while (v136 < blockCountByPrefixLen->super.size_)
    {
      if (*(&blockCountByPrefixLen->super.size_ + v136 + 1))
      {
        if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000A1594();
        }

        v137 = JavaUtilLocale_ROOT_;
        v159 = JavaLangInteger_valueOfWithInt_(v136);
        v138 = [IOSObjectArray arrayWithObjects:&v159 count:1 type:NSObject_class_()];
        NSString_formatWithJavaUtilLocale_withNSString_withNSObjectArray_(v137, @"%2d", v138);
        [(JavaIoPrintStream *)v157 printlnWithNSString:JreStrcat("$$$I", v139, v140, v141, v142, v143, v144, v145, @"      ")];
        blockCountByPrefixLen = self->blockCountByPrefixLen_;
      }

      ++v136;
      if (!blockCountByPrefixLen)
      {
        goto LABEL_33;
      }
    }
  }

  if ((atomic_load_explicit(OrgApacheLuceneUtilIOUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  return [(JavaIoByteArrayOutputStream *)v156 toStringWithNSString:OrgApacheLuceneUtilIOUtils_UTF_8_];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeStats;
  [(OrgApacheLuceneCodecsBlocktreeStats *)&v3 dealloc];
}

@end