@interface OrgApacheLuceneUtilPackedBulkOperation
+ (void)initialize;
- (int)computeIterationsWithInt:(int)a3 withInt:(int)a4;
- (int)writeLongWithLong:(int64_t)a3 withByteArray:(id)a4 withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperation

- (int)writeLongWithLong:(int64_t)a3 withByteArray:(id)a4 withInt:(int)a5
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  for (i = 56; i != -8; i -= 8)
  {
    v6 = a5;
    v7 = *(a4 + 2);
    if (a5 < 0 || a5 >= v7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v7, a5);
    }

    *(a4 + a5++ + 12) = a3 >> i;
  }

  return v6 + 1;
}

- (int)computeIterationsWithInt:(int)a3 withInt:(int)a4
{
  v7 = [(OrgApacheLuceneUtilPackedBulkOperation *)self byteBlockCount];
  v8 = a4 / (v7 + 8 * [(OrgApacheLuceneUtilPackedBulkOperation *)self byteValueCount]);
  if (!v8)
  {
    return 1;
  }

  if (([(OrgApacheLuceneUtilPackedBulkOperation *)self byteValueCount]* (v8 - 1)) >= a3)
  {
    v9 = JavaLangMath_ceilWithDouble_(a3 / [(OrgApacheLuceneUtilPackedBulkOperation *)self byteValueCount]);
    if (v9 < 0.0)
    {
      v10 = 0x80000000;
    }

    else
    {
      v10 = 0x7FFFFFFF;
    }

    if (v9 == 0x80000000)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  return v8;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v14[0] = new_OrgApacheLuceneUtilPackedBulkOperationPacked1_init();
    v14[1] = new_OrgApacheLuceneUtilPackedBulkOperationPacked2_init();
    v14[2] = new_OrgApacheLuceneUtilPackedBulkOperationPacked3_init();
    v14[3] = new_OrgApacheLuceneUtilPackedBulkOperationPacked4_init();
    v14[4] = new_OrgApacheLuceneUtilPackedBulkOperationPacked5_init();
    v14[5] = new_OrgApacheLuceneUtilPackedBulkOperationPacked6_init();
    v14[6] = new_OrgApacheLuceneUtilPackedBulkOperationPacked7_init();
    v14[7] = new_OrgApacheLuceneUtilPackedBulkOperationPacked8_init();
    v14[8] = new_OrgApacheLuceneUtilPackedBulkOperationPacked9_init();
    v14[9] = new_OrgApacheLuceneUtilPackedBulkOperationPacked10_init();
    v14[10] = new_OrgApacheLuceneUtilPackedBulkOperationPacked11_init();
    v14[11] = new_OrgApacheLuceneUtilPackedBulkOperationPacked12_init();
    v14[12] = new_OrgApacheLuceneUtilPackedBulkOperationPacked13_init();
    v14[13] = new_OrgApacheLuceneUtilPackedBulkOperationPacked14_init();
    v14[14] = new_OrgApacheLuceneUtilPackedBulkOperationPacked15_init();
    v14[15] = new_OrgApacheLuceneUtilPackedBulkOperationPacked16_init();
    v14[16] = new_OrgApacheLuceneUtilPackedBulkOperationPacked17_init();
    v14[17] = new_OrgApacheLuceneUtilPackedBulkOperationPacked18_init();
    v14[18] = new_OrgApacheLuceneUtilPackedBulkOperationPacked19_init();
    v14[19] = new_OrgApacheLuceneUtilPackedBulkOperationPacked20_init();
    v14[20] = new_OrgApacheLuceneUtilPackedBulkOperationPacked21_init();
    v14[21] = new_OrgApacheLuceneUtilPackedBulkOperationPacked22_init();
    v14[22] = new_OrgApacheLuceneUtilPackedBulkOperationPacked23_init();
    v14[23] = new_OrgApacheLuceneUtilPackedBulkOperationPacked24_init();
    v14[24] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(25);
    v14[25] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(26);
    v14[26] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(27);
    v14[27] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(28);
    v14[28] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(29);
    v14[29] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(30);
    v14[30] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(31);
    v14[31] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(32);
    v14[32] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(33);
    v14[33] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(34);
    v14[34] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(35);
    v14[35] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(36);
    v14[36] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(37);
    v14[37] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(38);
    v14[38] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(39);
    v14[39] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(40);
    v14[40] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(41);
    v14[41] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(42);
    v14[42] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(43);
    v14[43] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(44);
    v14[44] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(45);
    v14[45] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(46);
    v14[46] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(47);
    v14[47] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(48);
    v14[48] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(49);
    v14[49] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(50);
    v14[50] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(51);
    v14[51] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(52);
    v14[52] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(53);
    v14[53] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(54);
    v14[54] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(55);
    v14[55] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(56);
    v14[56] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(57);
    v14[57] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(58);
    v14[58] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(59);
    v14[59] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(60);
    v14[60] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(61);
    v14[61] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(62);
    v14[62] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(63);
    v14[63] = new_OrgApacheLuceneUtilPackedBulkOperationPacked_initWithInt_(64);
    v2 = [IOSObjectArray newArrayWithObjects:v14 count:64 type:OrgApacheLuceneUtilPackedBulkOperation_class_()];
    JreStrongAssignAndConsume(&qword_100554610, v2);
    v4[0] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(1);
    v4[1] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(2);
    v4[2] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(3);
    v4[3] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(4);
    v4[4] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(5);
    v4[5] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(6);
    v4[6] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(7);
    v4[7] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(8);
    v4[8] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(9);
    v4[9] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(10);
    v4[10] = 0;
    v4[11] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(12);
    memset(&v4[12], 0, 24);
    v4[15] = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(16);
    v5 = 0u;
    v6 = 0u;
    v7 = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(21);
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = new_OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock_initWithInt_(32);
    v3 = [IOSObjectArray newArrayWithObjects:v4 count:32 type:OrgApacheLuceneUtilPackedBulkOperation_class_()];
    JreStrongAssignAndConsume(&qword_100554618, v3);
    atomic_store(1u, OrgApacheLuceneUtilPackedBulkOperation__initialized);
  }
}

@end