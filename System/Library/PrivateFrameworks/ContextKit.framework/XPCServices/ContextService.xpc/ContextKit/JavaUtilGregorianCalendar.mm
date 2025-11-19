@interface JavaUtilGregorianCalendar
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLeapYearWithInt:(int)a3;
- (JavaUtilGregorianCalendar)init;
- (JavaUtilGregorianCalendar)initWithJavaUtilLocale:(id)a3;
- (JavaUtilGregorianCalendar)initWithJavaUtilTimeZone:(id)a3;
- (JavaUtilGregorianCalendar)initWithLong:(int64_t)a3;
- (id)getGregorianChange;
- (int)mod7WithLong:(int64_t)a3;
- (unint64_t)hash;
- (void)addWithInt:(int)a3 withInt:(int)a4;
- (void)computeFields;
- (void)computeTime;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)setGregorianChangeWithJavaUtilDate:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilGregorianCalendar

- (JavaUtilGregorianCalendar)init
{
  Default = JavaUtilTimeZone_getDefault();
  v4 = JavaUtilLocale_getDefault();
  JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(self, Default, v4);
  return self;
}

- (JavaUtilGregorianCalendar)initWithLong:(int64_t)a3
{
  JavaUtilGregorianCalendar_initWithBoolean_(self);
  [(JavaUtilCalendar *)self setTimeInMillisWithLong:a3];
  return self;
}

- (JavaUtilGregorianCalendar)initWithJavaUtilLocale:(id)a3
{
  Default = JavaUtilTimeZone_getDefault();
  JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(self, Default, a3);
  return self;
}

- (JavaUtilGregorianCalendar)initWithJavaUtilTimeZone:(id)a3
{
  Default = JavaUtilLocale_getDefault();
  JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(self, a3, Default);
  return self;
}

- (void)addWithInt:(int)a3 withInt:(int)a4
{
  if (!a4)
  {
    return;
  }

  if (a3 >= 0xF)
  {
    v34 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v34);
  }

  v5 = a4;
  if (a3)
  {
    if (a3 <= 2)
    {
      [(JavaUtilCalendar *)self complete];
      if (a3 == 2)
      {
        fields = self->super.fields_;
        if (!fields)
        {
          goto LABEL_53;
        }

        size = fields->super.size_;
        if (size <= 2)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, 2);
        }

        v9 = fields->buffer_[1] + v5;
        if (v9 < 0)
        {
          v5 = (v9 - 11) / 12;
          v9 += 12 * (-v9 / 0xCu) + 12;
        }

        else
        {
          v5 = v9 / 0xCu;
        }

        [(JavaUtilCalendar *)self setWithInt:2 withInt:v9 % 0xCu];
      }

      v17 = self->super.fields_;
      if (v17)
      {
        v18 = v17->super.size_;
        if (v18 <= 1)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, 1);
        }

        [(JavaUtilCalendar *)self setWithInt:1 withInt:(v17->buffer_[0] + v5)];
        v19 = self->super.fields_;
        v20 = v19->super.size_;
        if (v20 < 2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, 1);
        }

        v21 = [(JavaUtilGregorianCalendar *)self isLeapYearWithInt:v19->buffer_[0]];
        v22 = self->super.fields_;
        v23 = v22->super.size_;
        if (v23 <= 2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, 2);
        }

        v24 = sub_10019C394(v21, v22->buffer_[1]);
        v25 = self->super.fields_;
        v26 = v25->super.size_;
        if (v26 <= 5)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, 5);
        }

        if (v25->buffer_[4] <= v24)
        {
          goto LABEL_49;
        }

        v14 = self;
        v15 = 5;
        v12 = v24;
        goto LABEL_38;
      }

LABEL_53:
      JreThrowNullPointerException();
    }

    [(JavaUtilCalendar *)self getTimeInMillis];
    if (a3 <= 8)
    {
      if ((a3 - 5) >= 3)
      {
        v13 = 604800000;
      }

      else
      {
        v13 = 86400000;
      }

      goto LABEL_40;
    }

    if (a3 > 11)
    {
      if (a3 == 12)
      {
        v16 = 60000;
      }

      else
      {
        if (a3 != 13)
        {
          v33 = v5;
          goto LABEL_47;
        }

        v16 = 1000;
      }
    }

    else
    {
      if ((a3 - 10) >= 2)
      {
        v13 = 43200000;
LABEL_40:
        v27 = [(JavaUtilCalendar *)self getTimeZone];
        if (!v27)
        {
          goto LABEL_53;
        }

        v28 = [v27 getRawOffset];
        v29 = sub_10019C450(self, self->super.time_ + v28);
        v30 = v28 + v13 * v5;
        LODWORD(v28) = sub_10019C450(self, v30 + self->super.time_);
        v31 = (v29 - v28);
        if (sub_10019C450(self, v30 + self->super.time_ + v31) == v28)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        self->super.time_ += v13 * v5 + v32;
LABEL_48:
        self->super.areFieldsSet_ = 0;
        goto LABEL_49;
      }

      v16 = 3600000;
    }

    v33 = v5 * v16;
LABEL_47:
    self->super.time_ += v33;
    goto LABEL_48;
  }

  [(JavaUtilCalendar *)self complete];
  v10 = self->super.fields_;
  if (!v10)
  {
    goto LABEL_53;
  }

  v11 = v10->super.size_;
  if (v11 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, 0);
  }

  if (*(&v10->super.size_ + 1) == 1)
  {
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

    v12 = 0;
  }

  else
  {
    if (v5 < 1)
    {
      return;
    }

    v12 = 1;
  }

  v14 = self;
  v15 = 0;
LABEL_38:
  [(JavaUtilCalendar *)v14 setWithInt:v15 withInt:v12];
LABEL_49:

  [(JavaUtilCalendar *)self complete];
}

- (void)computeFields
{
  v3 = [(JavaUtilCalendar *)self getTimeZone];
  if (!v3 || ((v4 = v3, ![v3 inDaylightTimeWithJavaUtilDate:new_JavaUtilDate_initWithLong_(self->super.time_)]) ? (v5 = 0) : (v5 = objc_msgSend(v4, "getDSTSavings")), v6 = objc_msgSend(v4, "getRawOffset"), (fields = self->super.fields_) == 0))
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v8 = v6;
  size = fields->super.size_;
  if (size <= 16)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 16);
  }

  fields->buffer_[15] = v5;
  v10 = self->super.fields_;
  v11 = v10->super.size_;
  if (v11 < 16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, 15);
  }

  v10->buffer_[14] = v8;
  sub_10019C6E0(self, self->super.time_, v8);
  for (i = 0; i != 17; ++i)
  {
    isSet = self->super.isSet_;
    if (!isSet)
    {
      goto LABEL_14;
    }

    v14 = isSet->super.size_;
    if (i >= v14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v14, i);
    }

    *(&isSet->super.size_ + i + 4) = 1;
  }
}

- (void)computeTime
{
  if (![(JavaUtilCalendar *)self isLenient])
  {
    isSet = self->super.isSet_;
    if (!isSet)
    {
      goto LABEL_296;
    }

    size = isSet->super.size_;
    if (size <= 11)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 11);
    }

    if (isSet->buffer_[7])
    {
      fields = self->super.fields_;
      if (!fields)
      {
        goto LABEL_296;
      }

      v6 = fields->super.size_;
      if (v6 <= 11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v6, 11);
      }

      if (fields->buffer_[10] < 0)
      {
        goto LABEL_394;
      }

      v7 = self->super.fields_;
      v8 = v7->super.size_;
      if (v8 <= 11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, 11);
      }

      if (v7->buffer_[10] >= 24)
      {
        goto LABEL_394;
      }
    }

    else
    {
      v9 = self->super.isSet_;
      v10 = v9->super.size_;
      if (v10 <= 10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, 10);
      }

      if (v9->buffer_[6])
      {
        v11 = self->super.fields_;
        if (!v11)
        {
          goto LABEL_296;
        }

        v12 = v11->super.size_;
        if (v12 <= 10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, 10);
        }

        if (v11->buffer_[9] < 0)
        {
          goto LABEL_394;
        }

        v13 = self->super.fields_;
        v14 = v13->super.size_;
        if (v14 < 11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, 10);
        }

        if (v13->buffer_[9] > 11)
        {
LABEL_394:
          v245 = new_JavaLangIllegalArgumentException_init();
          objc_exception_throw(v245);
        }
      }
    }

    v15 = self->super.isSet_;
    v16 = v15->super.size_;
    if (v16 <= 12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, 12);
    }

    if (v15->buffer_[8])
    {
      v17 = self->super.fields_;
      if (!v17)
      {
        goto LABEL_296;
      }

      v18 = v17->super.size_;
      if (v18 <= 12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, 12);
      }

      if (v17->buffer_[11] < 0)
      {
        goto LABEL_394;
      }

      v19 = self->super.fields_;
      v20 = v19->super.size_;
      if (v20 <= 12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, 12);
      }

      if (v19->buffer_[11] >= 60)
      {
        goto LABEL_394;
      }
    }

    v21 = self->super.isSet_;
    v22 = v21->super.size_;
    if (v22 <= 13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, 13);
    }

    if (v21->buffer_[9])
    {
      v23 = self->super.fields_;
      if (!v23)
      {
        goto LABEL_296;
      }

      v24 = v23->super.size_;
      if (v24 <= 13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v24, 13);
      }

      if (v23->buffer_[12] < 0)
      {
        goto LABEL_394;
      }

      v25 = self->super.fields_;
      v26 = v25->super.size_;
      if (v26 <= 13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, 13);
      }

      if (v25->buffer_[12] >= 60)
      {
        goto LABEL_394;
      }
    }

    v27 = self->super.isSet_;
    v28 = v27->super.size_;
    if (v28 <= 14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v28, 14);
    }

    if (v27->buffer_[10])
    {
      v29 = self->super.fields_;
      if (!v29)
      {
        goto LABEL_296;
      }

      v30 = v29->super.size_;
      if (v30 <= 14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v30, 14);
      }

      if (v29->buffer_[13] < 0)
      {
        goto LABEL_394;
      }

      v31 = self->super.fields_;
      v32 = v31->super.size_;
      if (v32 <= 14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v32, 14);
      }

      if (v31->buffer_[13] >= 1000)
      {
        goto LABEL_394;
      }
    }

    v33 = self->super.isSet_;
    v34 = v33->super.size_;
    if (v34 <= 3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v34, 3);
    }

    if (*(&v33->super.size_ + 7) == 1)
    {
      v35 = self->super.fields_;
      if (!v35)
      {
        goto LABEL_296;
      }

      v36 = v35->super.size_;
      if (v36 <= 3)
      {
        IOSArray_throwOutOfBoundsWithMsg(v36, 3);
      }

      if (v35->buffer_[2] < 1)
      {
        goto LABEL_394;
      }

      v37 = self->super.fields_;
      v38 = v37->super.size_;
      if (v38 <= 3)
      {
        IOSArray_throwOutOfBoundsWithMsg(v38, 3);
      }

      if (v37->buffer_[2] >= 54)
      {
        goto LABEL_394;
      }
    }

    v39 = self->super.isSet_;
    v40 = v39->super.size_;
    if (v40 <= 7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v40, 7);
    }

    if (v39->buffer_[3])
    {
      v41 = self->super.fields_;
      if (!v41)
      {
        goto LABEL_296;
      }

      v42 = v41->super.size_;
      if (v42 <= 7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v42, 7);
      }

      if (v41->buffer_[6] < 1)
      {
        goto LABEL_394;
      }

      v43 = self->super.fields_;
      v44 = v43->super.size_;
      if (v44 <= 7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v44, 7);
      }

      if (v43->buffer_[6] >= 8)
      {
        goto LABEL_394;
      }
    }

    v45 = self->super.isSet_;
    v46 = v45->super.size_;
    if (v46 <= 8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v46, 8);
    }

    if (v45->buffer_[4])
    {
      v47 = self->super.fields_;
      if (!v47)
      {
        goto LABEL_296;
      }

      v48 = v47->super.size_;
      if (v48 <= 8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v48, 8);
      }

      if (v47->buffer_[7] < 1)
      {
        goto LABEL_394;
      }

      v49 = self->super.fields_;
      v50 = v49->super.size_;
      if (v50 <= 8)
      {
        IOSArray_throwOutOfBoundsWithMsg(v50, 8);
      }

      if (v49->buffer_[7] >= 7)
      {
        goto LABEL_394;
      }
    }

    v51 = self->super.isSet_;
    v52 = v51->super.size_;
    if (v52 <= 4)
    {
      IOSArray_throwOutOfBoundsWithMsg(v52, 4);
    }

    if (v51->buffer_[0])
    {
      v53 = self->super.fields_;
      if (!v53)
      {
        goto LABEL_296;
      }

      v54 = v53->super.size_;
      if (v54 <= 4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v54, 4);
      }

      if (v53->buffer_[3] < 1)
      {
        goto LABEL_394;
      }

      v55 = self->super.fields_;
      v56 = v55->super.size_;
      if (v56 <= 4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v56, 4);
      }

      if (v55->buffer_[3] >= 7)
      {
        goto LABEL_394;
      }
    }

    v57 = self->super.isSet_;
    v58 = v57->super.size_;
    if (v58 <= 9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v58, 9);
    }

    if (v57->buffer_[5])
    {
      v59 = self->super.fields_;
      if (!v59)
      {
        goto LABEL_296;
      }

      v60 = v59->super.size_;
      if (v60 <= 9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v60, 9);
      }

      if (v59->buffer_[8])
      {
        v61 = self->super.fields_;
        v62 = v61->super.size_;
        if (v62 <= 9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v62, 9);
        }

        if (v61->buffer_[8] != 1)
        {
          goto LABEL_394;
        }
      }
    }

    v63 = self->super.isSet_;
    v64 = v63->super.size_;
    if (v64 <= 10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v64, 10);
    }

    if (v63->buffer_[6])
    {
      v65 = self->super.fields_;
      if (!v65)
      {
        goto LABEL_296;
      }

      v66 = v65->super.size_;
      if (v66 <= 10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v66, 10);
      }

      if (v65->buffer_[9] < 0)
      {
        goto LABEL_394;
      }

      v67 = self->super.fields_;
      v68 = v67->super.size_;
      if (v68 < 11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v68, 10);
      }

      if (v67->buffer_[9] > 11)
      {
        goto LABEL_394;
      }
    }

    v69 = self->super.isSet_;
    v70 = v69->super.size_;
    if (v70 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v70, 1);
    }

    v71 = self->super.isSet_;
    if (*(&v69->super.size_ + 5) == 1)
    {
      v72 = v69->super.size_;
      if (v72 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v72, 0);
      }

      if (*(&v69->super.size_ + 4) == 1)
      {
        v73 = self->super.fields_;
        if (!v73)
        {
          goto LABEL_296;
        }

        v74 = v73->super.size_;
        if (v74 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v74, 0);
        }

        if (!*(&v73->super.size_ + 1))
        {
          v75 = self->super.fields_;
          v76 = v75->super.size_;
          if (v76 <= 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v76, 1);
          }

          if (v75->buffer_[0] < 1)
          {
            goto LABEL_394;
          }

          v77 = self->super.fields_;
          v78 = v77->super.size_;
          if (v78 <= 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v78, 1);
          }

          if (v77->buffer_[0] >= 292269055)
          {
            goto LABEL_394;
          }
        }
      }

      v79 = self->super.fields_;
      if (!v79)
      {
        goto LABEL_296;
      }

      v80 = v79->super.size_;
      if (v80 <= 1)
      {
        IOSArray_throwOutOfBoundsWithMsg(v80, 1);
      }

      if (v79->buffer_[0] < 1)
      {
        goto LABEL_394;
      }

      v81 = self->super.fields_;
      v82 = v81->super.size_;
      if (v82 <= 1)
      {
        IOSArray_throwOutOfBoundsWithMsg(v82, 1);
      }

      if (v81->buffer_[0] > 292278994)
      {
        goto LABEL_394;
      }

      v71 = self->super.isSet_;
    }

    v83 = v71->super.size_;
    if (v83 <= 2)
    {
      IOSArray_throwOutOfBoundsWithMsg(v83, 2);
    }

    if (*(&v71->super.size_ + 6) == 1)
    {
      v84 = self->super.fields_;
      if (!v84)
      {
        goto LABEL_296;
      }

      v85 = v84->super.size_;
      if (v85 <= 2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v85, 2);
      }

      if (v84->buffer_[1] < 0)
      {
        goto LABEL_394;
      }

      v86 = self->super.fields_;
      v87 = v86->super.size_;
      if (v87 <= 2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v87, 2);
      }

      if (v86->buffer_[1] >= 12)
      {
        goto LABEL_394;
      }
    }
  }

  v88 = self->super.isSet_;
  if (!v88)
  {
    goto LABEL_296;
  }

  v89 = v88->super.size_;
  if (v89 <= 11)
  {
    IOSArray_throwOutOfBoundsWithMsg(v89, 11);
  }

  if (v88->buffer_[7] && self->super.lastTimeFieldSet_ != 10)
  {
    v96 = self->super.fields_;
    if (!v96)
    {
      goto LABEL_296;
    }

    v97 = v96->super.size_;
    if (v97 <= 11)
    {
      IOSArray_throwOutOfBoundsWithMsg(v97, 11);
    }

    v95 = v96->buffer_[10];
  }

  else
  {
    v90 = self->super.isSet_;
    v91 = v90->super.size_;
    if (v91 <= 10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v91, 10);
    }

    if (v90->buffer_[6])
    {
      v92 = self->super.fields_;
      if (!v92)
      {
        goto LABEL_296;
      }

      v93 = v92->super.size_;
      if (v93 < 10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v93, 9);
      }

      v94 = 12 * v92->buffer_[8];
      if (v93 <= 10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v93, 10);
      }

      v95 = self->super.fields_->buffer_[9] + v94;
    }

    else
    {
      v95 = 0;
    }
  }

  v98 = 3600000 * v95;
  v99 = self->super.isSet_;
  v100 = v99->super.size_;
  if (v100 <= 12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v100, 12);
  }

  if (v99->buffer_[8])
  {
    v101 = self->super.fields_;
    if (!v101)
    {
      goto LABEL_296;
    }

    v102 = v101->super.size_;
    if (v102 <= 12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v102, 12);
    }

    v98 += 60000 * v101->buffer_[11];
  }

  v103 = self->super.isSet_;
  v104 = v103->super.size_;
  if (v104 <= 13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v104, 13);
  }

  if (v103->buffer_[9])
  {
    v105 = self->super.fields_;
    if (!v105)
    {
      goto LABEL_296;
    }

    v106 = v105->super.size_;
    if (v106 <= 13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v106, 13);
    }

    v98 += 1000 * v105->buffer_[12];
  }

  v107 = self->super.isSet_;
  v108 = v107->super.size_;
  if (v108 <= 14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v108, 14);
  }

  if (v107->buffer_[10])
  {
    v109 = self->super.fields_;
    if (!v109)
    {
      goto LABEL_296;
    }

    v110 = v109->super.size_;
    if (v110 <= 14)
    {
      IOSArray_throwOutOfBoundsWithMsg(v110, 14);
    }

    v98 += v109->buffer_[13];
  }

  v111 = self->super.isSet_;
  v112 = v111->super.size_;
  if (v112 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v112, 1);
  }

  if (*(&v111->super.size_ + 5) == 1)
  {
    v113 = self->super.fields_;
    if (!v113)
    {
      goto LABEL_296;
    }

    v114 = v113->super.size_;
    if (v114 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v114, 1);
    }

    v115 = v113->buffer_[0];
  }

  else
  {
    v115 = 1970;
  }

  v116 = self->super.isSet_;
  v117 = v116->super.size_;
  if (v117 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v117, 0);
  }

  if (*(&v116->super.size_ + 4) == 1)
  {
    v118 = self->super.fields_;
    if (!v118)
    {
      goto LABEL_296;
    }

    v119 = v118->super.size_;
    v120 = self->super.fields_;
    if (v119 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v119, 0);
    }

    if (*(&v118->super.size_ + 1))
    {
      v121 = v118->super.size_;
      if (v121 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v121, 0);
      }

      if (*(&v118->super.size_ + 1) != 1)
      {
        goto LABEL_394;
      }

      v120 = self->super.fields_;
    }

    v122 = v120->super.size_;
    if (v122 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v122, 0);
    }

    if (*(&v120->super.size_ + 1))
    {
      v115 = v115;
    }

    else
    {
      v115 = (1 - v115);
    }
  }

  v123 = self->super.isSet_;
  v124 = v123->super.size_;
  if (v124 <= 4)
  {
    IOSArray_throwOutOfBoundsWithMsg(v124, 4);
  }

  v125 = self->super.isSet_;
  if (v123->buffer_[0])
  {
    v126 = 1;
  }

  else
  {
    v127 = v123->super.size_;
    if (v127 <= 8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v127, 8);
    }

    v126 = v123->buffer_[4];
  }

  v128 = v125->super.size_;
  if (v128 <= 5)
  {
    IOSArray_throwOutOfBoundsWithMsg(v128, 5);
  }

  if (v125->buffer_[1])
  {
    goto LABEL_161;
  }

  v129 = self->super.isSet_;
  v130 = v129->super.size_;
  if (v130 <= 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v130, 2);
  }

  if ((*(&v129->super.size_ + 6) | v126))
  {
LABEL_161:
    lastDateFieldSet = self->super.lastDateFieldSet_;
    if (lastDateFieldSet != 7)
    {
      if (lastDateFieldSet == 6)
      {
        goto LABEL_194;
      }

      if (lastDateFieldSet != 3)
      {
        goto LABEL_179;
      }
    }

    v132 = self->super.isSet_;
    v133 = v132->super.size_;
    if (v133 <= 3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v133, 3);
    }

    v134 = self->super.isSet_;
    if (*(&v132->super.size_ + 7) == 1)
    {
      v135 = v132->super.size_;
      if (v135 <= 7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v135, 7);
      }

      if (v132->buffer_[3])
      {
        if (((self->super.lastDateFieldSet_ != 3) & v126) != 1)
        {
          goto LABEL_194;
        }

        v136 = self->super.isSet_;
        v137 = v136->super.size_;
        if (v137 <= 7)
        {
          IOSArray_throwOutOfBoundsWithMsg(v137, 7);
        }

        if (!v136->buffer_[3])
        {
          goto LABEL_194;
        }

LABEL_179:
        v248 = v98;
        v143 = self->super.fields_;
        if (!v143)
        {
          goto LABEL_296;
        }

        v144 = v143->super.size_;
        if (v144 <= 2)
        {
          IOSArray_throwOutOfBoundsWithMsg(v144, 2);
        }

        v145 = v143->buffer_[1];
        v146 = v145 / 12 + v115;
        v147 = v145 % 12;
        if (v147 >= 0)
        {
          v148 = v147;
        }

        else
        {
          v148 = (v147 + 12);
        }

        LODWORD(v115) = v146 + (v147 >> 31);
        v149 = [(JavaUtilGregorianCalendar *)self isLeapYearWithInt:v115];
        v150 = sub_10019F63C(self, v115);
        v246 = __PAIR64__(v148, v149);
        v151 = sub_10019F75C(v149, v148);
        v152 = self->super.isSet_;
        v153 = v152->super.size_;
        if (v153 <= 5)
        {
          IOSArray_throwOutOfBoundsWithMsg(v153, 5);
        }

        v154 = v150 + v151;
        if (v152->buffer_[1])
        {
          v155 = self->super.lastDateFieldSet_;
          if (v155 > 8 || ((1 << v155) & 0x190) == 0)
          {
            goto LABEL_397;
          }

          v156 = self->super.isSet_;
          v157 = v156->super.size_;
          if (v157 <= 7)
          {
            IOSArray_throwOutOfBoundsWithMsg(v157, 7);
          }

          if ((v156->buffer_[3] & v126 & 1) == 0)
          {
LABEL_397:
            if (![(JavaUtilCalendar *)self isLenient])
            {
              v198 = self->super.fields_;
              v199 = v198->super.size_;
              if (v199 <= 5)
              {
                IOSArray_throwOutOfBoundsWithMsg(v199, 5);
              }

              if (v198->buffer_[4] < 1)
              {
                goto LABEL_394;
              }

              v200 = self->super.fields_;
              v201 = v200->super.size_;
              if (v201 <= 5)
              {
                IOSArray_throwOutOfBoundsWithMsg(v201, 5);
              }

              v202 = v200->buffer_[4];
              if (v202 > sub_10019C394(v247, HIDWORD(v247)))
              {
                goto LABEL_394;
              }
            }

            v203 = self->super.fields_;
            v204 = v203->super.size_;
            if (v204 <= 5)
            {
              IOSArray_throwOutOfBoundsWithMsg(v204, 5);
            }

            v154 += v203->buffer_[4] - 1;
            goto LABEL_282;
          }
        }

        v158 = self->super.isSet_;
        v159 = v158->super.size_;
        if (v159 <= 7)
        {
          IOSArray_throwOutOfBoundsWithMsg(v159, 7);
        }

        if (v158->buffer_[3])
        {
          v160 = self->super.fields_;
          v161 = v160->super.size_;
          if (v161 <= 7)
          {
            IOSArray_throwOutOfBoundsWithMsg(v161, 7);
          }

          v162 = v160->buffer_[6];
        }

        else
        {
          v162 = [(JavaUtilCalendar *)self getFirstDayOfWeek];
        }

        v186 = self->super.isSet_;
        if (v186->super.size_ <= 4)
        {
          IOSArray_throwOutOfBoundsWithMsg(v186->super.size_, 4);
        }

        v187 = v162 - 1;
        if (v186->buffer_[0] && self->super.lastDateFieldSet_ != 8)
        {
          v220 = v154 - 3 - ([(JavaUtilCalendar *)self getFirstDayOfWeek]- 1);
          if (((v220 % 7) & v220) < 0 != v207)
          {
            v221 = v220 % 7 + 7;
          }

          else
          {
            v221 = v220 % 7;
          }

          v222 = self->super.fields_;
          v223 = v222->super.size_;
          if (v223 <= 4)
          {
            IOSArray_throwOutOfBoundsWithMsg(v223, 4);
          }

          v196 = v222->buffer_[3];
          v224 = v221 + v187 - (v154 - 3);
          if (((v224 % 7) & v224) < 0 != __OFSUB__(v223, 4))
          {
            v225 = v224 % 7 + 7;
          }

          else
          {
            v225 = v224 % 7;
          }

          v197 = v225 - v221 - v196;
        }

        else
        {
          v188 = self->super.isSet_;
          v189 = v188->super.size_;
          if (v189 <= 8)
          {
            IOSArray_throwOutOfBoundsWithMsg(v189, 8);
          }

          if (!v188->buffer_[4])
          {
            v205 = self->super.isSet_;
            v206 = v205->super.size_;
            if (v206 <= 7)
            {
              IOSArray_throwOutOfBoundsWithMsg(v206, 7);
            }

            if (v205->buffer_[3])
            {
              v208 = v154 - 3 - ([(JavaUtilCalendar *)self getFirstDayOfWeek]- 1);
              if (((v208 % 7) & v208) < 0 != v207)
              {
                v209 = v208 % 7 + 7;
              }

              else
              {
                v209 = v208 % 7;
              }

              v210 = v209 + v187 - (v154 - 3);
              v211 = v210 % 7;
              if (((v210 % 7) & v210) < 0 != v207)
              {
                LODWORD(v211) = v210 % 7 + 7;
              }

              v212 = v211 - v209;
              v213 = (v212 - 7 * ((((147 * v212) >> 8) >> 2) + ((((147 * v212) >> 8) & 0x80) >> 7)));
              if ((v212 & v213) < 0 != v207)
              {
                v214 = v213 + 7;
              }

              else
              {
                v214 = (v212 - 7 * ((((147 * v212) >> 8) >> 2) + ((((147 * v212) >> 8) & 0x80) >> 7)));
              }

              v154 += v214;
            }

            goto LABEL_289;
          }

          v190 = self->super.fields_;
          v191 = v190->super.size_;
          if (v191 <= 8)
          {
            IOSArray_throwOutOfBoundsWithMsg(v191, 8);
          }

          if (v190->buffer_[7] < 0)
          {
            v234 = sub_10019C394(v246, HIDWORD(v246));
            v235 = v187 - v154 + -sub_10019C394(v246, HIDWORD(v246)) + 3;
            if (((v235 % 7) & v235) < 0 != v207)
            {
              v236 = v235 % 7 + 7;
            }

            else
            {
              v236 = v235 % 7;
            }

            v237 = self->super.fields_;
            v238 = v237->super.size_;
            if (v238 <= 8)
            {
              IOSArray_throwOutOfBoundsWithMsg(v238, 8);
            }

            v226 = v236 + v234 - v237->buffer_[7] + 8 * v237->buffer_[7];
            goto LABEL_288;
          }

          v192 = v187 - v154 + 3;
          if (((v192 % 7) & v192) < 0 != __OFSUB__(v191, 8))
          {
            v193 = v192 % 7 + 7;
          }

          else
          {
            v193 = v192 % 7;
          }

          v194 = self->super.fields_;
          v195 = v194->super.size_;
          if (v195 <= 8)
          {
            IOSArray_throwOutOfBoundsWithMsg(v195, 8);
          }

          v196 = v194->buffer_[7];
          v197 = v193 - v196;
        }

        v226 = v197 + 8 * v196 - 7;
LABEL_288:
        v154 += v226;
        v98 = v248;
        goto LABEL_289;
      }

      v134 = self->super.isSet_;
    }

    v138 = v134->super.size_;
    if (v138 <= 6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v138, 6);
    }

    if (!v134->buffer_[2])
    {
      goto LABEL_179;
    }

    v139 = self->super.isSet_;
    v140 = v139->super.size_;
    if (v140 <= 5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v140, 5);
    }

    if (v139->buffer_[1])
    {
      v141 = self->super.isSet_;
      v142 = v141->super.size_;
      if (v142 <= 2)
      {
        IOSArray_throwOutOfBoundsWithMsg(v142, 2);
      }

      if (*(&v141->super.size_ + 6) == 1)
      {
        goto LABEL_179;
      }
    }
  }

LABEL_194:
  v163 = self->super.isSet_;
  v164 = v163->super.size_;
  if (v164 <= 3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v164, 3);
  }

  if (*(&v163->super.size_ + 7) == 1 && self->super.lastDateFieldSet_ != 6)
  {
    v181 = self->super.isSet_;
    v182 = v181->super.size_;
    if (v182 <= 6)
    {
      IOSArray_throwOutOfBoundsWithMsg(v182, 6);
    }

    if (v181->buffer_[2])
    {
      v183 = self->super.isSet_;
      v184 = v183->super.size_;
      if (v184 <= 7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v184, 7);
      }

      v185 = v183->buffer_[3];
      v154 = sub_10019F63C(self, v115);
      if (!v185)
      {
        goto LABEL_198;
      }
    }

    else
    {
      v154 = sub_10019F63C(self, v115);
    }

    v215 = self->super.isSet_;
    v216 = v215->super.size_;
    if (v216 <= 7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v216, 7);
    }

    v248 = v98;
    if (v215->buffer_[3])
    {
      v217 = self->super.fields_;
      if (!v217)
      {
        goto LABEL_296;
      }

      v218 = v217->super.size_;
      if (v218 <= 7)
      {
        IOSArray_throwOutOfBoundsWithMsg(v218, 7);
      }

      v219 = v217->buffer_[6];
    }

    else
    {
      v219 = [(JavaUtilCalendar *)self getFirstDayOfWeek];
    }

    v227 = v154 - 3 - ([(JavaUtilCalendar *)self getFirstDayOfWeek]- 1);
    if (((v227 % 7) & v227) < 0 != v207)
    {
      v228 = v227 % 7 + 7;
    }

    else
    {
      v228 = v227 % 7;
    }

    v229 = self->super.fields_;
    if (!v229)
    {
      goto LABEL_296;
    }

    v230 = v219 - 1;
    v231 = v229->super.size_;
    if (v231 <= 3)
    {
      IOSArray_throwOutOfBoundsWithMsg(v231, 3);
    }

    v232 = (v230 + v228) - (v154 - 3);
    if (((v232 % 7) & v232) < 0 != __OFSUB__(v231, 3))
    {
      v233 = v232 % 7 + 7;
    }

    else
    {
      v233 = v232 % 7;
    }

    v154 += v233 - v228 - v229->buffer_[2] + 8 * v229->buffer_[2] - 7;
    if (7 - v228 < [(JavaUtilCalendar *)self getMinimalDaysInFirstWeek])
    {
      v154 += 7;
    }

LABEL_282:
    v98 = v248;
    goto LABEL_289;
  }

  v154 = sub_10019F63C(self, v115);
LABEL_198:
  v165 = self->super.isSet_;
  v166 = v165->super.size_;
  if (v166 <= 6)
  {
    IOSArray_throwOutOfBoundsWithMsg(v166, 6);
  }

  if (v165->buffer_[2])
  {
    if (![(JavaUtilCalendar *)self isLenient])
    {
      v167 = self->super.fields_;
      if (!v167)
      {
        goto LABEL_296;
      }

      v168 = v167->super.size_;
      if (v168 <= 6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v168, 6);
      }

      if (v167->buffer_[5] < 1)
      {
        goto LABEL_394;
      }

      v169 = self->super.fields_;
      v170 = v169->super.size_;
      if (v170 <= 6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v170, 6);
      }

      v171 = v169->buffer_[5];
      v172 = [(JavaUtilGregorianCalendar *)self isLeapYearWithInt:v115]? 366 : 365;
      if (v171 > v172)
      {
        goto LABEL_394;
      }
    }

    v173 = self->super.fields_;
    if (v173)
    {
      v174 = v173->super.size_;
      if (v174 <= 6)
      {
        IOSArray_throwOutOfBoundsWithMsg(v174, 6);
      }

      v154 += v173->buffer_[5] - 1;
      goto LABEL_289;
    }

LABEL_296:
    JreThrowNullPointerException();
  }

  v175 = self->super.isSet_;
  v176 = v175->super.size_;
  if (v176 <= 7)
  {
    IOSArray_throwOutOfBoundsWithMsg(v176, 7);
  }

  if (v175->buffer_[3])
  {
    v177 = self->super.fields_;
    if (!v177)
    {
      goto LABEL_296;
    }

    v178 = v177->super.size_;
    if (v178 <= 7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v178, 7);
    }

    v179 = v177->buffer_[6] - 1 - v154 + 3;
    if (((v179 % 7) & v179) < 0 != __OFSUB__(v178, 7))
    {
      v180 = v179 % 7 + 7;
    }

    else
    {
      v180 = v179 % 7;
    }

    v154 += v180;
  }

LABEL_289:
  self->super.lastDateFieldSet_ = 0;
  v239 = v98 + 86400000 * v154;
  if (v115 == self->changeYear_)
  {
    v240 = v115 / 100 + v115 / -400 - 2;
    if (v239 >= self->gregorianCutover_ + 86400000 * v240)
    {
      v239 -= 86400000 * v240;
    }
  }

  v241 = sub_10019C450(self, v239);
  v242 = [(JavaUtilCalendar *)self getTimeZone];
  if (!v242)
  {
    goto LABEL_296;
  }

  v243 = v239 - v241 + [v242 getRawOffset];
  v244 = v239 - sub_10019C450(self, v243);
  self->super.time_ = v244;
  if (v243 != v244)
  {
    [(JavaUtilGregorianCalendar *)self computeFields];
    self->super.areFieldsSet_ = 1;
  }
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a3 == self)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v8.receiver = self;
      v8.super_class = JavaUtilGregorianCalendar;
      v5 = [(JavaUtilCalendar *)&v8 isEqual:a3];
      if (v5)
      {
        gregorianCutover = self->gregorianCutover_;
        objc_opt_class();
        if (!a3)
        {
          JreThrowNullPointerException();
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        LOBYTE(v5) = gregorianCutover == *(a3 + 10);
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)getGregorianChange
{
  v2 = new_JavaUtilDate_initWithLong_(self->gregorianCutover_);

  return v2;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = JavaUtilGregorianCalendar;
  return ((HIDWORD(self->gregorianCutover_) ^ LODWORD(self->gregorianCutover_)) + [(JavaUtilCalendar *)&v3 hash]);
}

- (BOOL)isLeapYearWithInt:(int)a3
{
  changeYear = self->changeYear_;
  v4 = changeYear >= a3;
  if ((a3 & 3) != 0)
  {
    v4 = 0;
  }

  HIDWORD(v6) = -1030792151 * a3 + 85899344;
  LODWORD(v6) = HIDWORD(v6);
  v5 = v6 >> 2;
  LODWORD(v6) = HIDWORD(v6);
  v7 = (v6 >> 4) < 0xA3D70B;
  v8 = v5 > 0x28F5C28 || v7;
  if (changeYear < a3 && (a3 & 3) == 0)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

- (int)mod7WithLong:(int64_t)a3
{
  if (((a3 % 7) & a3) < 0 != v3)
  {
    return a3 % 7 + 7;
  }

  else
  {
    return a3 % 7;
  }
}

- (void)setGregorianChangeWithJavaUtilDate:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  self->gregorianCutover_ = [a3 getTime];
  TimeZoneWithNSString = JavaUtilTimeZone_getTimeZoneWithNSString_(@"GMT");
  v6 = [JavaUtilGregorianCalendar alloc];
  Default = JavaUtilLocale_getDefault();
  JavaUtilGregorianCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(v6, TimeZoneWithNSString, Default);
  v8 = v6;
  [(JavaUtilCalendar *)v8 setTimeWithJavaUtilDate:a3];
  self->changeYear_ = [(JavaUtilCalendar *)v8 getWithInt:1];
  v9 = [(JavaUtilCalendar *)v8 getWithInt:0];
  changeYear = self->changeYear_;
  if (!v9)
  {
    changeYear = 1 - changeYear;
    self->changeYear_ = changeYear;
  }

  self->julianSkew_ = changeYear / 100 + changeYear / -400 + (changeYear - 2000) / 400 + (changeYear - 2000) / -100 - 2;
  v11 = [(JavaUtilCalendar *)v8 getWithInt:6];
  if (v11 >= self->julianSkew_)
  {
    self->lastYearSkew_ = 0;
    julianSkew = self->julianSkew_;
    v13 = &OBJC_IVAR___JavaUtilGregorianCalendar_currentYearSkew_;
  }

  else
  {
    self->currentYearSkew_ = v11 - 1;
    julianSkew = self->julianSkew_ - v11 + 1;
    v13 = &OBJC_IVAR___JavaUtilGregorianCalendar_lastYearSkew_;
  }

  *(&self->super.super.isa + *v13) = julianSkew;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultWriteObject];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];
  v4 = new_JavaUtilDate_initWithLong_(self->gregorianCutover_);

  [(JavaUtilGregorianCalendar *)self setGregorianChangeWithJavaUtilDate:v4];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v9 = 0x1F1F1E1F1E1F1C1FLL;
    v10 = 522067742;
    JreStrongAssignAndConsume(&JavaUtilGregorianCalendar_DaysInMonth_, [IOSByteArray newArrayWithBytes:&v9 count:12]);
    v8[0] = xmmword_100314A88;
    v8[1] = unk_100314A98;
    v8[2] = xmmword_100314AA8;
    JreStrongAssignAndConsume(&qword_100554C10, [IOSIntArray newArrayWithInts:v8 count:12]);
    v7 = 7200000;
    v6[0] = xmmword_100314AB8;
    v6[1] = unk_100314AC8;
    v6[2] = xmmword_100314AD8;
    v6[3] = unk_100314AE8;
    JreStrongAssignAndConsume(&qword_100554BF8, [IOSIntArray newArrayWithInts:v6 count:17]);
    v5 = 0;
    v4[0] = xmmword_100314AFC;
    v4[1] = *algn_100314B0C;
    v4[2] = xmmword_100314B1C;
    v4[3] = unk_100314B2C;
    JreStrongAssignAndConsume(&qword_100554C08, [IOSIntArray newArrayWithInts:v4 count:17]);
    v3 = 1200000;
    v2[0] = xmmword_100314B40;
    v2[1] = unk_100314B50;
    v2[2] = xmmword_100314B60;
    v2[3] = unk_100314B70;
    JreStrongAssignAndConsume(&qword_100554C00, [IOSIntArray newArrayWithInts:v2 count:17]);
    atomic_store(1u, JavaUtilGregorianCalendar__initialized);
  }
}

@end