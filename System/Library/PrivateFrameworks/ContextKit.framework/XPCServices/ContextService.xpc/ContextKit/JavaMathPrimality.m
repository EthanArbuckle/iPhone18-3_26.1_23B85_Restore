@interface JavaMathPrimality
+ (void)initialize;
@end

@implementation JavaMathPrimality

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    memcpy(__dst, &unk_100314CA0, sizeof(__dst));
    JreStrongAssignAndConsume(&qword_100554E70, [IOSIntArray newArrayWithInts:__dst count:172]);
    v2 = [IOSObjectArray newArrayWithLength:*(qword_100554E70 + 8) type:JavaMathBigInteger_class_()];
    JreStrongAssignAndConsume(&qword_100554E78, v2);
    v19 = 1;
    v18[10] = xmmword_100314FF0;
    v18[11] = unk_100315000;
    v18[12] = xmmword_100315010;
    v18[6] = xmmword_100314FB0;
    v18[7] = unk_100314FC0;
    v18[8] = xmmword_100314FD0;
    v18[9] = unk_100314FE0;
    v18[2] = xmmword_100314F70;
    v18[3] = unk_100314F80;
    v18[4] = xmmword_100314F90;
    v18[5] = unk_100314FA0;
    v18[0] = xmmword_100314F50;
    v18[1] = unk_100314F60;
    JreStrongAssignAndConsume(&qword_100554E80, [IOSIntArray newArrayWithInts:v18 count:53]);
    v17[0] = 0;
    v17[1] = 0;
    v16 = 0x200000000;
    v17[2] = [IOSIntArray arrayWithInts:&v16 count:2];
    v15 = 0x200000002;
    v17[3] = [IOSIntArray arrayWithInts:&v15 count:2];
    v14 = 0x200000004;
    v17[4] = [IOSIntArray arrayWithInts:&v14 count:2];
    v13 = 0x500000006;
    v17[5] = [IOSIntArray arrayWithInts:&v13 count:2];
    v12 = 0x70000000BLL;
    v17[6] = [IOSIntArray arrayWithInts:&v12 count:2];
    v11 = 0xD00000012;
    v17[7] = [IOSIntArray arrayWithInts:&v11 count:2];
    v10 = 0x170000001FLL;
    v17[8] = [IOSIntArray arrayWithInts:&v10 count:2];
    v9 = 0x2B00000036;
    v17[9] = [IOSIntArray arrayWithInts:&v9 count:2];
    v8 = 0x4B00000061;
    v17[10] = [IOSIntArray arrayWithInts:&v8 count:2];
    v3 = +[IOSObjectArray newArrayWithObjects:count:type:](IOSObjectArray, "newArrayWithObjects:count:type:", v17, 11, IOSClass_arrayType(+[IOSClass intClass], 1u));
    JreStrongAssignAndConsume(&qword_100554E88, v3);
    v4 = qword_100554E70;
    if (*(qword_100554E70 + 8) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = qword_100554E78;
        v7 = JavaMathBigInteger_valueOfWithLong_(*(v4 + 12 + 4 * v5));
        IOSObjectArray_Set(v6, v5++, v7);
        v4 = qword_100554E70;
      }

      while (v5 < *(qword_100554E70 + 8));
    }

    atomic_store(1u, &JavaMathPrimality__initialized);
  }
}

@end