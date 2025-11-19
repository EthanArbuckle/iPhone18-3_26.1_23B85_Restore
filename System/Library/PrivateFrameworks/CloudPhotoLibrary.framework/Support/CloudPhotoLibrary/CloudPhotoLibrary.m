void sub_100002138(uint64_t a1, void *a2, sqlite3_stmt *a3, unint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = sqlite3_sql(a3);
    v10 = [[NSString alloc] initWithBytesNoCopy:v9 length:strlen(v9) encoding:4 freeWhenDone:0];
    v11 = [WeakRetained[46] objectForKeyedSubscript:v10];
    if (!v11)
    {
      v11 = [[_CPLPrequeliteStatementStatistic alloc] initWithStatement:v10];
      v12 = WeakRetained[46];
      v13 = [(_CPLPrequeliteStatementStatistic *)v11 statement];
      [v12 setObject:v11 forKeyedSubscript:v13];
    }

    [(_CPLPrequeliteStatementStatistic *)v11 setCount:[(_CPLPrequeliteStatementStatistic *)v11 count]+ 1];
    [(_CPLPrequeliteStatementStatistic *)v11 setResultsCount:[(_CPLPrequeliteStatementStatistic *)v11 resultsCount]+ a4];
    v14 = sqlite3_stmt_status(a3, 1, 1);
    if (sqlite3_stmt_readonly(a3))
    {
      if (a4 < 0xB)
      {
        if (a4 + 3 >= v14 || (_CPLSilentLogging & 1) != 0)
        {
          goto LABEL_25;
        }

        v15 = sub_10015060C();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v14 < 2 * a4 || (_CPLSilentLogging & 1) != 0)
        {
          goto LABEL_25;
        }

        v15 = sub_10015060C();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
LABEL_24:

LABEL_25:
          goto LABEL_26;
        }
      }

      v18 = 136315650;
      v19 = v9;
      v20 = 2048;
      v21 = v14;
      v22 = 2048;
      v23 = a4;
      v16 = "'%s' performed %lu steps to return %lu rows";
    }

    else
    {
      v17 = [v7 changes];
      if (v17 < 0xB)
      {
        if (v17 + 3 >= v14 || (_CPLSilentLogging & 1) != 0)
        {
          goto LABEL_25;
        }

        v15 = sub_10015060C();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v14 < 2 * v17 || (_CPLSilentLogging & 1) != 0)
        {
          goto LABEL_25;
        }

        v15 = sub_10015060C();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }
      }

      v18 = 136315650;
      v19 = v9;
      v20 = 2048;
      v21 = v14;
      v22 = 2048;
      v23 = a4;
      v16 = "'%s' performed %lu steps to perform %lu changes";
    }

    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, &v18, 0x20u);
    goto LABEL_24;
  }

LABEL_26:
}

uint64_t sub_1000024A4(int a1, void *a2, sqlite3_stmt *a3, void *a4)
{
  v7 = a2;
  if (a1 == 2)
  {
    v8 = sqlite3_sql(a3);
    v9 = [[NSString alloc] initWithBytesNoCopy:v8 length:strlen(v8) encoding:4 freeWhenDone:0];
    v10 = [v7[46] objectForKeyedSubscript:v9];
    if (!v10)
    {
      v10 = [[_CPLPrequeliteStatementStatistic alloc] initWithStatement:v9];
      v11 = v7[46];
      v12 = [(_CPLPrequeliteStatementStatistic *)v10 statement];
      [v11 setObject:v10 forKeyedSubscript:v12];
    }

    [(_CPLPrequeliteStatementStatistic *)v10 setDurationInNanoSeconds:[(_CPLPrequeliteStatementStatistic *)v10 durationInNanoSeconds]+ *a4];
  }

  return 0;
}

void sub_1000026AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000026F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002744(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002790(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000027DC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002828(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002874(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000028C0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10000290C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002958(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000029A4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000029F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002A3C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002A88(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002AD4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002B20(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002B6C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002BB8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002C04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002C50(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002C9C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100002CE8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

id sub_100002F50()
{
  if (qword_1002D2B10 != -1)
  {
    sub_1001B9E44();
  }

  v1 = qword_1002D2B18;

  return v1;
}

void sub_100003150(uint64_t a1)
{
  if (a1 && (*(a1 + 24) & 1) == 0)
  {
    *(a1 + 24) = 1;
    v2 = [NSDictionary alloc];
    v3 = *(a1 + 32);
    v18 = 0;
    v4 = [v2 initWithContentsOfURL:v3 error:&v18];
    v5 = v18;
    if (v4)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = sub_10003FC10();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v20 = v4;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Operation group mapping: %{public}@", buf, 0xCu);
        }
      }

      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100198E00;
      v16 = &unk_100273EC0;
      v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
      v17 = v7;
      [v4 enumerateKeysAndObjectsUsingBlock:&v13];
      if ([v7 count:v13])
      {
        v8 = [v7 copy];
        v9 = *(a1 + 16);
        *(a1 + 16) = v8;
      }
    }

    else
    {
      v10 = +[NSFileManager defaultManager];
      v11 = [v10 cplIsFileDoesNotExistError:v5];

      if (v11 & 1) != 0 || (_CPLSilentLogging)
      {
        goto LABEL_12;
      }

      v7 = sub_10003FC10();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = [*(a1 + 32) path];
        *buf = 138412546;
        v20 = v12;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to load group mapping at %@: %@", buf, 0x16u);
      }
    }

LABEL_12:
  }
}

BOOL sub_1000033C0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100003408(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

BOOL sub_100003424(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100003448(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10000348C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

id sub_1000034F4(uint64_t a1)
{

  return [v1 setName:a1];
}

void sub_100003528(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x16u);
}

void sub_100003548(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id sub_100003568()
{
  if (qword_1002C5008 != -1)
  {
    sub_100193990();
  }

  v1 = qword_1002C5010;

  return v1;
}

id sub_1000035AC()
{
  if (qword_1002C5028 != -1)
  {
    sub_100196978();
  }

  v1 = qword_1002C5030;

  return v1;
}

id sub_1000035F0()
{
  if (qword_1002C5060 != -1)
  {
    sub_1001980AC();
  }

  v1 = qword_1002C5068;

  return v1;
}

id sub_100003634()
{
  if (qword_1002C5080 != -1)
  {
    sub_100198A04();
  }

  v1 = qword_1002C5088;

  return v1;
}

id sub_100003678()
{
  if (qword_1002C50C0 != -1)
  {
    sub_100199338();
  }

  v1 = qword_1002C50C8;

  return v1;
}

id sub_1000036BC()
{
  if (qword_1002C50F0 != -1)
  {
    sub_1001996D0();
  }

  v1 = qword_1002C50F8;

  return v1;
}

id sub_100003700()
{
  if (qword_1002C5160 != -1)
  {
    sub_10019A1D8();
  }

  v1 = qword_1002C5168;

  return v1;
}

id sub_100003744()
{
  if (qword_1002C5170 != -1)
  {
    sub_10019A79C();
  }

  v1 = qword_1002C5178;

  return v1;
}

id sub_100003788()
{
  if (qword_1002C5180 != -1)
  {
    sub_10019B408();
  }

  v1 = qword_1002C5188;

  return v1;
}

id sub_1000037CC()
{
  if (qword_1002C5198 != -1)
  {
    sub_10019BD54();
  }

  v1 = qword_1002C51A0;

  return v1;
}

id sub_100003810()
{
  if (qword_1002C5250 != -1)
  {
    sub_1001A04E8();
  }

  v1 = qword_1002C5258;

  return v1;
}

id sub_100003854()
{
  if (qword_1002C5270 != -1)
  {
    sub_1001A1A60();
  }

  v1 = qword_1002C5278;

  return v1;
}

id sub_100003898()
{
  if (qword_1002C5388 != -1)
  {
    sub_1001A4688();
  }

  v1 = qword_1002C5390;

  return v1;
}

id sub_1000038DC()
{
  if (qword_1002C53A0 != -1)
  {
    sub_1001A4C28();
  }

  v1 = qword_1002C53A8;

  return v1;
}

id sub_100003920()
{
  if (qword_1002C53B0 != -1)
  {
    sub_1001A4F18();
  }

  v1 = qword_1002C53B8;

  return v1;
}

id sub_100003964()
{
  if (qword_1002C5418 != -1)
  {
    sub_1001A86D0();
  }

  v1 = qword_1002C5420;

  return v1;
}

id sub_1000039A8()
{
  if (qword_1002C5520 != -1)
  {
    sub_1001A8EBC();
  }

  v1 = qword_1002C5528;

  return v1;
}

id sub_1000039EC()
{
  if (qword_1002C5530 != -1)
  {
    sub_1001A91E8();
  }

  v1 = qword_1002C5538;

  return v1;
}

id sub_100003A30()
{
  if (qword_1002C5580 != -1)
  {
    sub_1001A9F20();
  }

  v1 = qword_1002C5588;

  return v1;
}

id sub_100003A74()
{
  if (qword_1002C55B0 != -1)
  {
    sub_1001AA3BC();
  }

  v1 = qword_1002C55B8;

  return v1;
}

id sub_100003AB8()
{
  if (qword_1002C55F0 != -1)
  {
    sub_1001AAE54();
  }

  v1 = qword_1002C55F8;

  return v1;
}

id sub_100003AFC()
{
  if (qword_1002C5600 != -1)
  {
    sub_1001AD0DC();
  }

  v1 = qword_1002C5608;

  return v1;
}

id sub_100003B40()
{
  if (qword_1002C5620 != -1)
  {
    sub_1001AD62C();
  }

  v1 = qword_1002C5628;

  return v1;
}

id sub_100003B84()
{
  if (qword_1002C5630 != -1)
  {
    sub_1001ADA40();
  }

  v1 = qword_1002C5638;

  return v1;
}

id sub_100003BC8()
{
  if (qword_1002C5678 != -1)
  {
    sub_1001AF124();
  }

  v1 = qword_1002C5680;

  return v1;
}

id sub_100003C0C()
{
  if (qword_1002C5688 != -1)
  {
    sub_1001AF4D0();
  }

  v1 = qword_1002C5690;

  return v1;
}

id sub_100003C50()
{
  if (qword_1002C5698 != -1)
  {
    sub_1001AFBF4();
  }

  v1 = qword_1002C56A0;

  return v1;
}

id sub_100003C94()
{
  if (qword_1002C56C8 != -1)
  {
    sub_1001B004C();
  }

  v1 = qword_1002C56D0;

  return v1;
}

void sub_100003F4C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v4 = [v1 objectForKey:@"CPLAllowsSyncOverCellular"];

  v2 = v4;
  if (v4)
  {
    v3 = [v4 BOOLValue];
    v2 = v4;
  }

  else
  {
    v3 = byte_1002BFB60;
  }

  byte_1002BFB60 = v3;
}

void sub_100004008(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v4 = [v1 objectForKey:@"CPLAllowsSyncOverExpensiveNetwork"];

  v2 = v4;
  if (v4)
  {
    v3 = [v4 BOOLValue];
    v2 = v4;
  }

  else
  {
    v3 = byte_1002BFB61;
  }

  byte_1002BFB61 = v3;
}

void sub_100004218(void *a1)
{
  v1 = sub_1001A50BC(a1, @"Fetching Zone Changes");
  sub_1000034F4(v1);
}

uint64_t sub_100004370(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004380(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004390(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000043A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000043B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000043C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000043D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000043E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000043F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004400(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004410(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004440(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004450(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004460(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004470(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004480(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004490(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000044A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000044B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000044C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000044D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000044E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000044F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004500(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004510(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004520(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004530(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004540(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004550(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004560(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004570(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004580(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100004590(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000045A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000045B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000045C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000045D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000489C(uint64_t a1)
{
  if (!a1 || (*(a1 + 161) & 1) != 0 || (*(a1 + 73) & 1) != 0 || *(a1 + 120))
  {
    return 0;
  }

  v2 = [a1 operationGroup];
  v3 = [v2 defaultConfiguration];
  v4 = [v3 cplDiscretionary];

  return v4;
}

id sub_100004B38()
{
  if (qword_1002C5200 != -1)
  {
    sub_10019CE10();
  }

  v1 = qword_1002C5208;

  return v1;
}

uint64_t sub_100005684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t sub_10000582C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000058D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s22CloudKitImplementation18Rpcproto_ErrorInfoV6ClientV4CodeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s22CloudKitImplementation18Rpcproto_ErrorInfoV6ClientV4CodeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000059D4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000059F0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_100005A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100005ABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100005B68()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005BA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005BD8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005C10()
{
  v1 = (type metadata accessor for ResourceDownloadRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v3;
  v9 = *(v0 + v3);

  v10 = v1[7];
  v11 = type metadata accessor for UnknownStorage();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  v12 = *(v0 + v4);

  v13 = *(v0 + v5 + 8);

  v14 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v2 | 7);
}

uint64_t sub_100005D5C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005D94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100005DEC()
{
  v1 = (type metadata accessor for ResourceDownloadRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0 + v3;
  v11 = *(v0 + v3);

  v12 = v1[7];
  v13 = type metadata accessor for UnknownStorage();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);
  v14 = *(v0 + v4);

  v15 = *(v0 + v5);

  v16 = *(v0 + v6 + 8);

  v17 = *(v0 + v7);

  return _swift_deallocObject(v0, v9 + 8, v2 | 7);
}

uint64_t sub_100005F4C()
{
  v1 = (type metadata accessor for ResourceStreamRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0 + v3;
  v10 = *(v0 + v3);

  v11 = v1[7];
  v12 = type metadata accessor for UnknownStorage();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = *(v0 + v4);

  v14 = *(v0 + v5 + 8);

  v15 = *(v0 + v7 + 8);

  v16 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v2 | 7);
}

uint64_t sub_1000060A4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000060FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000613C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100006194()
{
  v1 = (type metadata accessor for ResourceDownloadRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v0 + v3;
  v11 = *(v0 + v3);

  v12 = v1[7];
  v13 = type metadata accessor for UnknownStorage();
  (*(*(v13 - 8) + 8))(v10 + v12, v13);
  v14 = *(v0 + v4);

  v15 = *(v0 + v5 + 8);

  v16 = *(v0 + v6);

  v17 = *(v0 + v7);

  v18 = *(v0 + v8 + 8);

  v19 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v2 | 7);
}

uint64_t sub_1000063A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100006454(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000064F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000065A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100006648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100006778(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000068AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100006958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000069FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C0F78, &qword_100245198);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100006B2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C0F78, &qword_100245198);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100006C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100006D08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_100006DB4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_100006DCC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_100006DE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t sub_1000071C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10000723C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000072B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100007374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000742C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000755C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10000768C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007738(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000077DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007888(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000792C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000079D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100007A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007B28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100007C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100007C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100007D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100007E14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100007F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100008070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000081A0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_100008324(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000084D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000857C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100008620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100008750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000088A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000089D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100008B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100008C04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100008D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100008DB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100008E5C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000BB130(&qword_1002C2CF8, &qword_100248A10);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_100008FE0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000BB130(&qword_1002C2CF8, &qword_100248A10);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100009164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100009210(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000092B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100009364(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100009408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C2D00, &qword_100248A18);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100009538(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BB130(&qword_1002C2D00, &qword_100248A18);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000096A0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000096D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009718()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009750()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100009A78()
{
  if (qword_1002C4EF0 != -1)
  {
    sub_100184468();
  }

  v1 = qword_1002C4EF8;

  return v1;
}

void sub_100009B68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 112);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009CA8;
  v15[3] = &unk_100271D68;
  v15[4] = v8;
  v16 = v6;
  v17 = v5;
  v18 = v7;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026AC;
  block[3] = &unk_100271E98;
  v20 = v10;
  v11 = v9;
  v12 = v5;
  v13 = v6;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void sub_100009CA8(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (v1[96])
  {
    sub_1001847D4((a1 + 32), v1);
    return;
  }

  v4 = (a1 + 40);
  v5 = *(a1 + 40);
  if (v5)
  {
    sub_100184868(*(a1 + 32), v5, v4);
    return;
  }

  if ([*(a1 + 48) length])
  {
    v6 = *(a1 + 48);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.photos.cloud"];
  [*v2 _setPushRegistrationStatus:0 error:0];
  v9 = APSEnvironmentProduction;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;
  v11 = *(*v2 + 1);
  if (*(*v2 + 16) != 1)
  {
    if (v11)
    {
      sub_10018447C(a1, v2);
    }

    goto LABEL_24;
  }

  if (!v11)
  {
    sub_100184710(a1, v2);
  }

  v12 = *(*v2 + 3);
  if (!v12)
  {
    sub_10018464C(a1, v2);
  }

  if (([v12 isEqualToString:v10] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_100009A78();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dropping idle APS connection as real environment is %@", buf, 0xCu);
      }
    }

    [*(*v2 + 1) shutdown];
    v13 = *(*v2 + 1);
    *(*v2 + 1) = 0;
    goto LABEL_22;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_100009A78();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Start waiting for push notifications, topic %@, environment: %@ (reusing idle APS connection)", buf, 0x16u);
    }

LABEL_22:
  }

  *(*v2 + 16) = 0;
LABEL_24:
  v15 = [v10 copy];
  v16 = *(*v2 + 3);
  *(*v2 + 3) = v15;

  if (!*(*v2 + 1))
  {
    sub_100184540(v8, v10, v2);
  }

  v21 = v8;
  v17 = [NSArray arrayWithObjects:&v21 count:1];
  v18 = *(*v2 + 4);
  *(*v2 + 4) = v17;

  v19 = *(*v2 + 4);
  if (*(*v2 + 97) == 1)
  {
    v20 = *(*v2 + 4);
    v19 = 0;
  }

  else
  {
    v20 = 0;
  }

  [*(*v2 + 1) setEnabledTopics:v20 ignoredTopics:0 opportunisticTopics:v19];
}

void sub_10000A188(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 112);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A2B4;
  v11[3] = &unk_100271DE0;
  v11[4] = v5;
  v12 = v3;
  v13 = v4;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026AC;
  block[3] = &unk_100271E98;
  v15 = v7;
  v8 = v6;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void sub_10000A2B4(void *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = a1[4];
  if (v3[1])
  {
    v4 = [[NSMutableString alloc] initWithFormat:@"push notification environment: %@\npush notification topics: ", *(a1[4] + 24)];
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v43 = 1;
    v36 = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_10000A738;
    v39 = &unk_100271DB8;
    v41 = v42;
    v5 = v4;
    v40 = v5;
    v6 = objc_retainBlock(&v36);
    v7 = [*(a1[4] + 8) enabledTopics];
    (v6[2])(v6, v7, @"enabled");

    v8 = [*(a1[4] + 8) ignoredTopics];
    (v6[2])(v6, v8, @"ignored");

    v9 = [*(a1[4] + 8) opportunisticTopics];
    (v6[2])(v6, v9, @"opportunistic");

    [v2 addObject:v5];
    _Block_object_dispose(v42, 8);

    v3 = a1[4];
  }

  if (v3[5])
  {
    v10 = v3[11];
    v11 = &CPLFeatureNameEPP_ptr;
    if (v10)
    {
      v12 = [v10 cplNotificationTypeDescription];
      v13 = [*(a1[4] + 88) notificationID];
      v14 = [v13 notificationUUID];
      v15 = [*(a1[4] + 88) containerIdentifier];
      v16 = [*(a1[4] + 88) subscriptionID];
      if (v16)
      {
        v11 = [*(a1[4] + 88) subscriptionID];
        v17 = [NSString stringWithFormat:@"\n\tsubscriptionID = %@", v11];
      }

      else
      {
        v17 = &stru_10027C2F0;
      }

      v22 = [NSString stringWithFormat:@"notificationType = %@\n\tnotificationID = %@\n\tcontainerIdentifier = %@%@", v12, v14, v15, v17, v36, v37, v38, v39];
      if (v16)
      {
      }
    }

    else
    {
      v22 = @"(no push info)";
    }

    v23 = [NSMutableString alloc];
    v24 = [CPLDateFormatter stringFromDateAgo:*(a1[4] + 40) now:0];
    v25 = [v23 initWithFormat:@"last push notification: %@ - %@", v24, *(a1[4] + 64)];

    v26 = a1[5];
    if (v26)
    {
      v27 = [v26 cloudKitClientIdentifier];
      [v25 appendFormat:@"\n\t(initially served to %@)", v27];
    }

    [v25 appendFormat:@"\n\t%@", v22];
    [v2 addObject:v25];
    if (*(a1[4] + 56) >= 2uLL)
    {
      v28 = [NSString alloc];
      v29 = a1[4];
      v30 = *(v29 + 56);
      [*(v29 + 40) timeIntervalSinceDate:*(v29 + 48)];
      v32 = [v28 initWithFormat:@"received %lu push notifications in %.1fs", v30, v31];
      [v2 addObject:v32];
    }

    goto LABEL_23;
  }

  if (v3[9])
  {
    v18 = v3[10];
    v19 = [NSString alloc];
    v20 = a1[4];
    if (v18)
    {
      v21 = [v19 initWithFormat:@"push notification: %@ (%@)", *(v20 + 72), *(v20 + 80)];
    }

    else
    {
      v21 = [v19 initWithFormat:@"push notification: %@", *(v20 + 72), v35];
    }

    v22 = v21;
    [v2 addObject:v21];
LABEL_23:

    goto LABEL_24;
  }

  [v2 addObject:@"last push notification: none since launch"];
LABEL_24:
  v33 = a1[6];
  v34 = [v2 componentsJoinedByString:@"\n"];
  (*(v33 + 16))(v33, v34);
}

void sub_10000A720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A738(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 count])
  {
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = [v10 componentsJoinedByString:{@", "}];
    v9 = v8;
    if (v7 == 1)
    {
      [v6 appendFormat:@"%@ (%@)", v8, v5];

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    else
    {
      [v6 appendFormat:@", %@ (%@)", v8, v5];
    }
  }
}

void sub_10000A8C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 112);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A9F0;
  v11[3] = &unk_100271DE0;
  v11[4] = v5;
  v12 = v3;
  v13 = v4;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026AC;
  block[3] = &unk_100271E98;
  v15 = v7;
  v8 = v6;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void sub_10000A9F0(void *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = a1[4];
  if (*(v3 + 8))
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      v32 = @"environment";
      v33 = v4;
      v5 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v6 = [v5 mutableCopy];

      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_10000ADB0;
      v30 = &unk_100271E30;
      v7 = v6;
      v31 = v7;
      v8 = objc_retainBlock(&v27);
      v9 = [*(a1[4] + 8) enabledTopics];
      (v8[2])(v8, v9, @"enabled");

      v10 = [*(a1[4] + 8) ignoredTopics];
      (v8[2])(v8, v10, @"ignored");

      v11 = [*(a1[4] + 8) opportunisticTopics];
      (v8[2])(v8, v11, @"opportunistic");

      v12 = a1[4];
      if (*(v12 + 88) || *(v12 + 40))
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        v14 = *(a1[4] + 88);
        if (v14)
        {
          v15 = [v14 cplNotificationTypeDescription];
          [v13 setObject:v15 forKeyedSubscript:@"type"];

          v16 = [*(a1[4] + 88) notificationID];
          v17 = [v16 notificationUUID];
          [v13 setObject:v17 forKeyedSubscript:@"notificationID"];

          v18 = [*(a1[4] + 88) containerIdentifier];
          [v13 setObject:v18 forKeyedSubscript:@"container"];

          v19 = [*(a1[4] + 88) subscriptionID];
          [v13 setObject:v19 forKeyedSubscript:@"subscriptionID"];

          v20 = [*(a1[4] + 88) notificationID];
          v21 = [v20 notificationUUID];
          [v13 setObject:v21 forKeyedSubscript:@"notificationID"];

          v22 = a1[5];
          if (v22)
          {
            v23 = [v22 cloudKitClientIdentifier];
            [v13 setObject:v23 forKeyedSubscript:@"client"];
          }
        }

        if (*(a1[4] + 64))
        {
          v24 = *(a1[4] + 64);
        }

        else
        {
          v24 = @"none";
        }

        [v13 setObject:v24 forKeyedSubscript:@"pushTopic"];
        v25 = *(a1[4] + 40);
        if (v25)
        {
          [v25 timeIntervalSinceReferenceDate];
          v26 = [NSNumber numberWithDouble:?];
          [v13 setObject:v26 forKeyedSubscript:@"date"];
        }

        [v7 setObject:v13 forKeyedSubscript:@"lastPush"];
      }

      [v2 setObject:v7 forKeyedSubscript:@"push"];
    }
  }

  (*(a1[6] + 16))();
}

void sub_10000ADB0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 count])
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

void sub_10000AF20(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.push");
  v3 = qword_1002C4EF8;
  qword_1002C4EF8 = v2;
}

void sub_10000AF60(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000B7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000B7D8()
{
  if (qword_1002C4F20 != -1)
  {
    sub_100187664();
  }

  v1 = qword_1002C4F28;

  return v1;
}

void sub_10000B81C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 72) count])
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v2 = sub_10000B7D8();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v6 = 0;
    v3 = "Daemon is idle";
    v4 = &v6;
    goto LABEL_9;
  }

  if (![*(*(a1 + 32) + 80) count])
  {
    sub_100187678(_CPLSilentLogging);
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10000B7D8();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      return;
    }

    v5 = 0;
    v3 = "Daemon is idle with no client";
    v4 = &v5;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    goto LABEL_10;
  }
}

void sub_10000B904(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v13 = [v2 bundleIdentifier];

  if (!v13)
  {
    sub_1001876C4(a1);
  }

  v3 = [[CPLEngineParametersStorage alloc] initWithBundleIdentifier:v13];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = [[CPLEngineWrapperArray alloc] initWithParametersStorage:*(*(a1 + 32) + 24) queue:*(*(a1 + 32) + 128)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 80);
  *(v7 + 80) = v6;

  [*(*(a1 + 32) + 80) setDelegate:?];
  v9 = *(a1 + 32);
  if ((*(v9 + 16) & 1) == 0)
  {
    +[CPLCloudKitReschedulerCoordinator beginRegisteringKnownReschedulerManager];
    v9 = *(a1 + 32);
  }

  [*(v9 + 80) loadRegisteredWrappers];
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    +[CPLCloudKitReschedulerCoordinator endRegisteringKnownReschedulerManagers];
  }

  v10 = [[CPLInitialDownloadHelper alloc] initWithWrappers:*(*(a1 + 32) + 80) queue:*(*(a1 + 32) + 128)];
  v11 = *(a1 + 32);
  v12 = *(v11 + 88);
  *(v11 + 88) = v10;

  [*(*(a1 + 32) + 88) setDelegate:?];
  [*(a1 + 32) _registerAfterLaunchWhenAllEnginesAreOpened];
}

id sub_10000BA48(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(v1 + 138) == 1)
  {
    exit(0);
  }

  v3 = [*(v1 + 80) count];
  if (![*(*v2 + 80) count])
  {
    sub_100187850(_CPLSilentLogging);
  }

  return sub_100187790(_CPLSilentLogging, v3, v2);
}

void sub_10000BD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000BD38(uint64_t a1)
{
  result = MKBDeviceUnlockedSinceBoot();
  if (result == 1)
  {
    notify_cancel(*(*(*(a1 + 40) + 8) + 24));
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v3 = *(a1 + 32);

    return [v3 _performPendingBlockAfterFirstUnlock];
  }

  return result;
}

uint64_t sub_10000BDA0(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_10000C320(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001852E8;
  v7[3] = &unk_100271F68;
  v7[4] = v2;
  v7[5] = a2;
  v4 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026F8;
  block[3] = &unk_100271E98;
  v9 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

void sub_10000C414(id a1, CPLEngineWrapper *a2, BOOL *a3)
{
  v4 = [(CPLEngineWrapper *)a2 engine];
  v3 = [v4 feedback];
  [v3 sendFeedbackToServerIfNecessary];
}

void sub_10000C484(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100185728;
  v5[3] = &unk_100272178;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 executeMaintenanceWithCompletionHandler:v5];
}

id sub_10000C530(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 192);
  v2 = [*(a1 + 40) deferReason];

  return [v1 didExpireTaskWithIdentifier:@"com.apple.cloudphotod.backup" reason:v2];
}

void sub_10000C578(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 80);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C678;
  v8[3] = &unk_1002721F0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  [v3 forceBackupWithActivity:v4 forceClientPush:1 completionHandler:v8];
}

void sub_10000C678(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) removeDeferHandler:*(a1 + 40)];
  if ([*(a1 + 32) shouldDefer])
  {
    v4 = *(a1 + 48);
    v7 = 0;
    v5 = [v4 setTaskExpiredWithRetryAfter:&v7 error:0.0];
    v6 = v7;
    if (v5)
    {
      sub_100187AE8();
    }

    else
    {
      sub_100187A18((a1 + 48));
    }
  }

  else
  {
    sub_100187924(v3, a1);
  }

  [*(a1 + 64) setCompletedUnitCount:{objc_msgSend(*(a1 + 64), "totalUnitCount")}];
}

id sub_10000C740(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 192);
  v2 = [*(a1 + 40) deferReason];

  return [v1 didExpireTaskWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass" reason:v2];
}

void sub_10000C788(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 88);
  v4 = CPLLibraryIdentifierSystemLibrary;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100186130;
  v15[3] = &unk_1002720B8;
  v16 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C8F0;
  v11[3] = &unk_100272240;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v10 = *(a1 + 32);
  v7 = *(a1 + 48);
  *&v8 = v10;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v12 = v9;
  v13 = v8;
  v14 = *(a1 + 64);
  [v3 requestInitialDownloadOfMainScopeForLibraryWithIdentifier:v4 activity:v2 progressHandler:v15 completionHandler:v11];
}

void sub_10000C8F0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) removeDeferHandler:*(a1 + 40)];
  if ([*(a1 + 32) shouldDefer])
  {
    v15 = 0.0;
    goto LABEL_22;
  }

  if (!v5)
  {
    sub_100187C5C(a1, a2);
    goto LABEL_11;
  }

  if (![v5 isCPLErrorWithCode:28])
  {
    if (![v5 isCPLErrorWithCode:83] || (objc_msgSend(v5, "userInfo"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", CPLErrorScopesHaveNotBeenActivatedKey), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v6, !v8))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = sub_10000B7D8();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "System-requested Initial Download finished with error: %@", buf, 0xCu);
        }
      }

      [*(*(a1 + 48) + 192) didErrorTaskWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];
      if (++*(*(a1 + 48) + 200) > 4uLL)
      {
        goto LABEL_11;
      }

      sub_100187D94(a1 + 48, buf);
      v15 = *buf;
LABEL_22:
      v17 = *(a1 + 56);
      v20 = 0;
      v18 = [v17 setTaskExpiredWithRetryAfter:&v20 error:v15];
      v10 = v20;
      if (v18)
      {
        sub_100187F34(a1);
      }

      else
      {
        sub_100187E5C((a1 + 56), v10, a1);
      }

      goto LABEL_15;
    }

    if (sub_100187B60(buf))
    {
      goto LABEL_28;
    }

    v16 = *buf;
    goto LABEL_27;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = sub_10000B7D8();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Apple Account is not setup - won't request a retry for Initial Download", buf, 2u);
    }

LABEL_27:
  }

LABEL_28:
  sub_100187C3C(a1);
LABEL_11:
  v10 = [[BGSystemTaskResult alloc] initWithIdentifier:@"com.apple.cloudphotod.initialdownload.finished" cumulativeProductionCount:1];
  v11 = [[NSSet alloc] initWithObjects:{v10, 0}];
  v12 = *(a1 + 56);
  v19 = 0;
  v13 = [v12 producedCumulativeResults:v11 error:&v19];
  v14 = v19;
  if ((v13 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    sub_100187CE8((a1 + 56));
  }

  [*(a1 + 56) setTaskCompleted];
  [*(*(a1 + 48) + 192) didFinishTaskWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];

LABEL_15:
  [*(a1 + 64) setCompletedUnitCount:{objc_msgSend(*(a1 + 64), "totalUnitCount")}];
}

void sub_10000CEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_10000CF34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processConnectionDidInvalidate:v2];
}

void sub_10000DCE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  v5 = [NSMutableString alloc];
  if (*(a1 + 56))
  {
    v6 = ":";
  }

  else
  {
    v6 = "";
  }

  v7 = [CPLDateFormatter stringFromDateAgo:*(*(a1 + 32) + 8) now:v4];
  v8 = *(a1 + 32);
  if (*(v8 + 16))
  {
    v9 = " for sync bubble";
  }

  else
  {
    v9 = "";
  }

  if (*(v8 + 17))
  {
    v10 = " forcing client push";
  }

  else
  {
    v10 = "";
  }

  v11 = __CPLVersion();
  v12 = [v5 initWithFormat:@"launched%s %@%s%s (%@)", v6, v7, v9, v10, v11];

  if (*(a1 + 56) == 1)
  {
    [v12 appendString:@"\nregistered libraries:"];
    if (![*(a1 + 40) count])
    {
      [v12 appendString:@" none"];
      goto LABEL_29;
    }

    if ([*(a1 + 40) count] == 1)
    {
      v13 = [*(a1 + 40) registeredLibraryIdentifiers];
      [v12 appendFormat:@" %@", v13];
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = [*(a1 + 40) registeredLibraryIdentifiers];
      v17 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v32;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(v13);
            }

            [v12 appendFormat:@"\n\t%@", *(*(&v31 + 1) + 8 * i)];
          }

          v18 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v18);
      }
    }
  }

  else
  {
    if ([*(a1 + 40) count] < 2)
    {
      goto LABEL_29;
    }

    v13 = [*(a1 + 40) registeredLibraryIdentifiers];
    v14 = CPLLibraryIdentifierSystemLibrary;
    v15 = [v13 containsObject:CPLLibraryIdentifierSystemLibrary];
    v16 = [v13 count];
    if (v15)
    {
      [v12 appendFormat:@"\nregistered libraries: %@ and %lu more", v14, v16 - 1];
    }

    else
    {
      [v12 appendFormat:@"\nregistered libraries: %lu", v16, v28];
    }

    [v12 appendString:@" (use cplctl daemon engines for more info)"];
  }

LABEL_29:
  v21 = +[NSUserDefaults standardUserDefaults];
  v22 = [v21 dictionaryRepresentation];

  v23 = objc_alloc_init(NSMutableArray);
  if (qword_1002C4F18 != -1)
  {
    sub_100188308();
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000E1A0;
  v29[3] = &unk_100272300;
  v29[4] = *(a1 + 32);
  v24 = v23;
  v30 = v24;
  [v22 enumerateKeysAndObjectsUsingBlock:v29];
  if ([v24 count])
  {
    v25 = [v24 componentsJoinedByString:@"\n\t"];
    [v12 appendFormat:@"\ndefaults:\n\t%@", v25];
  }

  if ([v3 length])
  {
    [v12 appendFormat:@"\n%@", v3];
  }

  v26 = [*(*(a1 + 32) + 192) statusesWithNow:0];
  if ([v26 count])
  {
    v27 = [v26 componentsJoinedByString:@"\n  "];
    [v12 appendFormat:@"\nbackground tasks:\n  %@", v27];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000E148(id a1)
{
  v1 = [[NSSet alloc] initWithObjects:{@"CPLDidFetchAccountFlagsAfterMigration", 0}];
  v2 = qword_1002C4F10;
  qword_1002C4F10 = v1;
}

void sub_10000E1A0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 hasPrefix:@"CPL"] && (objc_msgSend(qword_1002C4F10, "containsObject:", v8) & 1) == 0 && (+[CPLResetTracker shouldIgnoreDefaultsCPLKey:](CPLResetTracker, "shouldIgnoreDefaultsCPLKey:", v8) & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 24), "isCPLEngineParametersStorageKey:", v8) & 1) == 0)
  {
    if ([v8 isEqualToString:CPLDropDerivativesTestRulesKey])
    {
      v6 = [CPLDropDerivativesRecipe unarchiveArrayOfCPLDropDerivativeRecipesFrom:v5];

      v5 = v6;
    }

    v7 = [[NSString alloc] initWithFormat:@"%@ = %@", v8, v5];
    [*(a1 + 40) addObject:v7];
  }
}

void sub_10000E2B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 128);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000E3E4;
  v10[3] = &unk_100272350;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026F8;
  block[3] = &unk_100271E98;
  v14 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void sub_10000E51C(uint64_t a1)
{
  v8 = @"launchDate";
  [*(*(a1 + 32) + 8) timeIntervalSinceReferenceDate];
  v2 = [NSNumber numberWithDouble:?];
  v9 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v4 = *(*(a1 + 32) + 64);
  if (v4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000E670;
    v5[3] = &unk_1002723A0;
    v6 = v3;
    v7 = *(a1 + 40);
    [v4 getStatusDictionaryWithCompletionHandler:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10000E670(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  (*(*(a1 + 40) + 16))();
}

void sub_10000E8CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000E974;
  v3[3] = &unk_1002721A0;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _performAfterRegistrations:v3];
}

id sub_10000E974(void *a1)
{
  *(a1[4] + 200) = 0;
  result = [*(a1[4] + 88) initialDownloadIsRunning];
  if ((result & 1) == 0)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 _reRunFastPassInitialDownloadIfNecessaryForWrapper:v4 withReschedulerManager:v5];
  }

  return result;
}

void sub_10000EFDC(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 128));
  v3 = *(*(a1 + 56) + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) setCancellationHandler:0];
  }
}

void sub_10000F078(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F17C;
  v5[3] = &unk_100271E98;
  v6 = *(a1 + 40);
  v2 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026F8;
  block[3] = &unk_100271E98;
  v8 = v2;
  v3 = v1;
  v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v3, v4);
}

void sub_10000F17C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors operationCancelledError];
  (*(v1 + 16))(v1, v2);
}

void sub_10000F1E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(*(a1 + 32) + 128);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F31C;
  v13[3] = &unk_100272418;
  v16 = a2;
  v8 = *(a1 + 40);
  v14 = v6;
  v15 = v8;
  v9 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026F8;
  block[3] = &unk_100271E98;
  v18 = v9;
  v10 = v7;
  v11 = v6;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v12);
}

void sub_10000F31C(void *a1)
{
  v1 = a1[6];
  if ((v1 - 1) < 2)
  {
    v4 = *(a1[5] + 16);

    v4();
  }

  else
  {
    if ((v1 - 3) < 2)
    {
      v2 = a1[5];
      v9 = [CPLErrors cplErrorWithCode:28 description:@"No available iCloud user"];
      (*(v2 + 16))(v2, v9);
      v3 = v9;
LABEL_4:

      return;
    }

    if (v1)
    {
      return;
    }

    v5 = a1[5];
    if (!a1[4])
    {
      v8 = [CPLErrors cplErrorWithCode:150 description:@"Failed to determine account status with no errors"];
      (*(v5 + 16))(v5, v8);
      v3 = v8;
      goto LABEL_4;
    }

    v6 = *(v5 + 16);
    v7 = a1[5];

    v6(v7);
  }
}

void sub_10000F620(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000F73C;
  v10[3] = &unk_1002720E0;
  v10[4] = v4;
  v11 = v3;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000026F8;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void sub_10000F73C(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(v1 + 168);
  if (v3)
  {
    if (*(a1 + 40))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = sub_10000B7D8();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = *(a1 + 40);
          v8 = 138412290;
          v9 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Upload failed with error: %@", &v8, 0xCu);
        }

        v1 = *v2;
      }

      if (*(v1 + 184) == 1)
      {
        v7 = +[UMUserManager sharedManager];
        [v7 unregisterStakeHolder:*v2 status:1 reason:@"Upload failed"];

        *(*v2 + 184) = 0;
      }
    }

    else
    {
      sub_1001884E4(_CPLSilentLogging, v2, v3);
    }
  }
}

void sub_10000F864(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "daemon");
  v3 = qword_1002C4F28;
  qword_1002C4F28 = v2;
}

void sub_10000F8A4(id a1)
{
  v2 = +[UMUserManager sharedManager];
  if ([v2 isMultiUser])
  {
    v1 = [v2 currentUser];
    byte_1002C4F30 = [v1 userType] == 1;
  }

  else
  {
    byte_1002C4F30 = 0;
  }
}

void sub_10000F9B0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void sub_10000FA44(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

BOOL sub_10000FABC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_10000FAE0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id sub_10000FB40(uint64_t a1, ...)
{
  va_start(va, a1);

  return [v1 performAsCurrentWithPendingUnitCount:1 usingBlock:va];
}

void sub_10000FB94(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

BOOL sub_10000FBAC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

dispatch_block_t sub_10000FBC4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char block)
{

  return dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
}

BOOL sub_10000FBDC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t start(int a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"CPLUseSyncBubbleScheduler"];

  if (v6)
  {
    v7 = 1;
  }

  else if (a1 < 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = a1 - 2;
    v9 = (a2 + 8);
    do
    {
      v10 = *v9++;
      v11 = strcmp(v10, "--syncbubble");
      v7 = v11 == 0;
      if (v11)
      {
        v12 = v8 == 0;
      }

      else
      {
        v12 = 1;
      }

      --v8;
    }

    while (!v12);
  }

  v13 = [[CPLDaemon alloc] initForSyncBubble:v7 forceClientPush:v6];
  objc_autoreleasePoolPop(v4);
  v14 = +[NSRunLoop currentRunLoop];
  [v14 run];

  return 0;
}

id sub_10000FD9C()
{
  if (qword_1002C4F40 != -1)
  {
    sub_100188B58();
  }

  v1 = qword_1002C4F48;

  return v1;
}

id sub_10000FDE0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) totalUnitCount];
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

void sub_10000FE30(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000FF14;
  v8[3] = &unk_100272590;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v11 = *(a1 + 64);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 32);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 requestRegisteredWrapperWithIdentifier:v3 completionHandler:v8];
}

void sub_10000FF14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 64) == 1)
    {
      sub_100188C3C(v5, a1, v7);
    }

    else
    {
      sub_100188B6C(v5, a1);
    }
  }

  else
  {
    sub_100188DD8(a1, v6);
  }
}

void sub_10000FFA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v10 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000100C4;
  v6[3] = &unk_100272540;
  v5 = *(a1 + 40);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  [v2 requestScopesWithIdentifiersToBeActivated:v3 completionHandler:v6];
}

void sub_1000100C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001888C8;
  v9[3] = &unk_100272518;
  v10 = v3;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v5 = v9;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002744;
  block[3] = &unk_100271E98;
  v15 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

id sub_10001051C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) totalUnitCount];
  v3 = *(a1 + 32);

  return [v3 setCompletedUnitCount:v2];
}

void sub_10001056C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000106E4;
  v14[3] = &unk_100272608;
  v15 = v3;
  v5 = *(a1 + 40);
  v18 = *(a1 + 64);
  v6 = *(a1 + 56);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = v6;
  *&v9 = v5;
  *(&v9 + 1) = v7;
  v16 = v9;
  v17 = v8;
  v10 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002744;
  block[3] = &unk_100271E98;
  v20 = v10;
  v11 = v4;
  v12 = v3;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v13);
}

void sub_1000106E4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  if (v3)
  {
    sub_100188EAC(v2, a1);
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000107AC;
    v5[3] = &unk_1002725E0;
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 56);
    v6 = *(a1 + 40);
    v8 = *(a1 + 72);
    v7 = *(a1 + 64);
    [v4 performAsCurrentWithPendingUnitCount:1 usingBlock:v5];
  }
}

void sub_100010C34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CPLErrors incorrectMachineStateErrorWithReason:@"Initial download is already running"];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100010CA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
  v6 = a3;

  [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
  (*(*(a1 + 48) + 16))();
}

void sub_100010D30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010E30;
  v9[3] = &unk_100272770;
  v12 = *(a1 + 64);
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v13 = *(a1 + 72);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v2 requestLibraryWithIdentifier:v3 withActivatedMainScope:1 completionHandler:v9];
}

void sub_100010E30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = [*(*(a1 + 32) + 24) openedWrapperWithLibraryIdentifier:*(a1 + 40)];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 48);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100010FB0;
      v12[3] = &unk_100272748;
      v13 = v5;
      v8 = *(a1 + 72);
      v9 = *(a1 + 32);
      v16 = v8;
      v14 = v9;
      v15 = *(a1 + 56);
      v17 = *(a1 + 64);
      [v7 performAsCurrentWithPendingUnitCount:10 usingBlock:v12];
    }

    else
    {
      v10 = *(a1 + 64);
      v11 = [CPLErrors cplErrorWithCode:2006 description:@"%@ not found", *(a1 + 40)];
      (*(v10 + 16))(v10, 0, v11);
    }
  }
}

void sub_100010FB0(uint64_t a1)
{
  v2 = [*(a1 + 32) engine];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v3 = [v2 store];
  v4 = [v3 pullQueue];
  if (*(a1 + 56))
  {
    v5 = [CPLEngineDequeueObserver alloc];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000112D4;
    v24[3] = &unk_1002726A8;
    v24[4] = *(a1 + 40);
    v26 = v29;
    v27 = v28;
    v25 = *(a1 + 56);
    v6 = [v5 initWithClientDidAcknowledgeBatchBlock:v24];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100011530;
    v21[3] = &unk_1002726D0;
    v22 = v4;
    v7 = v6;
    v23 = v7;
    v8 = [v3 performReadTransactionWithBlock:v21];
  }

  else
  {
    v7 = 0;
  }

  v9 = *(a1 + 48);
  v10 = [v2 mainScopeIdentifier];
  v31 = v10;
  v11 = [NSArray arrayWithObjects:&v31 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001153C;
  v15[3] = &unk_100272720;
  v15[4] = *(a1 + 40);
  v20 = v29;
  v12 = v7;
  v16 = v12;
  v13 = v3;
  v17 = v13;
  v14 = v4;
  v18 = v14;
  v19 = *(a1 + 64);
  [v2 forceInitialDownloadWithActivity:v9 scopeIdentifiers:v11 completionHandler:v15];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v29, 8);
}

void sub_1000112A4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1000112D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if ([v10 isAssetChange] && objc_msgSend(v10, "isFullRecord"))
        {
          v7 += [v10 inTrash] ^ 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
    if (v7)
    {
      v11 = *(*(a1 + 32) + 32);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000114E8;
      v17[3] = &unk_100272680;
      v19 = *(a1 + 56);
      v20 = v7;
      v16 = *(a1 + 40);
      v12 = v16;
      v18 = v16;
      v13 = v17;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002744;
      block[3] = &unk_100271E98;
      v26 = v13;
      v14 = v11;
      v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v14, v15);
    }
  }
}

void *sub_1000114E8(void *result)
{
  if ((*(*(result[5] + 8) + 24) & 1) == 0)
  {
    *(*(result[6] + 8) + 24) += result[7];
    return (*(result[4] + 16))(result[4], *(*(result[6] + 8) + 24));
  }

  return result;
}

void sub_10001153C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000116BC;
  v12[3] = &unk_1002726F8;
  v18 = *(a1 + 72);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v7 = *(a1 + 64);
  v19 = a2;
  v16 = v5;
  v17 = v7;
  v8 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002744;
  block[3] = &unk_100271E98;
  v21 = v8;
  v9 = v6;
  v10 = v5;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

uint64_t sub_1000116BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 72) + 8) + 24) = 1;
  if (*(a1 + 32))
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100011790;
    v8[3] = &unk_1002726D0;
    v5 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);
    v6 = [v5 performReadTransactionWithBlock:v8];
  }

  return (*(*(a1 + 64) + 16))(*(a1 + 64), *(a1 + 80), *(a1 + 56), a4);
}

void sub_100011970(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "daemon.initialdownload");
  v3 = qword_1002C4F48;
  qword_1002C4F48 = v2;
}

void sub_1000119B0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

id sub_100011E54()
{
  if (qword_1002C4F50 != -1)
  {
    sub_1001897D4();
  }

  v1 = qword_1002C4F58;

  return v1;
}

void sub_100011EB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100011FD0;
  v10[3] = &unk_1002720E0;
  v11 = v3;
  v12 = v4;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002790;
  block[3] = &unk_100271E98;
  v14 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void sub_100011FD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    [*(v2 + 24) removeVolumeUnmountObserver:?];
    [*(*(a1 + 40) + 24) stop];
    v3 = *(a1 + 40);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;
  }

  else
  {
    *(v2 + 74) = 0;
    [*(a1 + 40) _startWatchingSystemState];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 104));
  [WeakRetained wrapper:*(a1 + 40) libraryDidOpenWithError:*(a1 + 32)];
}

uint64_t *sub_100012368(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = (a1 + 32);
  v2 = v3;
  if ((v3[74] & 1) == 0)
  {
    return sub_1001897E8(result, v2);
  }

  return result;
}

void sub_100012394(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000124B0;
  v10[3] = &unk_1002720E0;
  v10[4] = v4;
  v11 = v3;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002790;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void sub_1000124B0(uint64_t a1)
{
  v1 = (a1 + 32);
  *(*(a1 + 32) + 74) = 1;
  *(*(a1 + 32) + 73) = 0;
  if (*(a1 + 40))
  {
    sub_1001898D0((a1 + 32), (a1 + 40));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*v1 + 104));
    [WeakRetained wrapperLibraryDidClose:*v1];
  }
}

void sub_10001261C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012720;
  v7[3] = &unk_1002723C8;
  v7[4] = v2;
  v8 = v1;
  v4 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002790;
  block[3] = &unk_100271E98;
  v10 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

uint64_t sub_100012720(uint64_t a1)
{
  [*(a1 + 32) _stopWatchingSystemState];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained wrapperShouldBeDropped:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10001284C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012950;
  v7[3] = &unk_1002723C8;
  v7[4] = v2;
  v8 = v1;
  v4 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002790;
  block[3] = &unk_100271E98;
  v10 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

id sub_100012950(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained wrapperShouldBeDropped:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  return [v3 _emergencyExit];
}

void sub_100012FE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained wrapper:*(a1 + 32) getStatusDictionaryWithCompletionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100013174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  v3 = [*(*(a1 + 32) + 88) supervisor];
  v4 = [v3 status];

  if (!v4)
  {
    v5 = objc_retainBlock(*(a1 + 40));
    if (WeakRetained)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5[2](v5, &stru_10027C2F0, 0);
    goto LABEL_6;
  }

  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000132A0;
  v9 = &unk_100272810;
  v11 = *(a1 + 40);
  v10 = v4;
  v5 = [&v6 copy];

  if (!WeakRetained)
  {
    goto LABEL_5;
  }

LABEL_3:
  [WeakRetained wrapper:*(a1 + 32) getStatusWithCompletionHandler:{v5, v6, v7, v8, v9}];
LABEL_6:
}

void sub_1000132A0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 16);
    v7 = a2;
    v5(v4);
  }

  else
  {
    v6 = a2;
    v7 = [[NSString alloc] initWithFormat:@"%@\nsupervisor: %@", v6, *(a1 + 32)];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000134A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained wrapperNeedsInitialDownloadOfMainScope:*(a1 + 32)];
}

void sub_1000135EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained wrapperDidCompleteInitialSyncOfMainScope:*(a1 + 32)];
}

void sub_100013944(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.wrapper");
  v3 = qword_1002C4F58;
  qword_1002C4F58 = v2;
}

void sub_1000139AC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

void sub_1000139CC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

id sub_1000139E4()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPLDaemonProcessProtocol];
  v1 = objc_opt_class();
  v2 = [NSSet setWithObjects:v1, objc_opt_class(), 0];
  [v0 setClasses:v2 forSelector:"getEngineWrapperStatusesWithCompletionHandler:" argumentIndex:0 ofReply:1];

  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [v0 setClasses:v4 forSelector:"getDaemonLibraryManagerStatusesWithCompletionHandler:" argumentIndex:0 ofReply:1];

  return v0;
}

id sub_100013FC4()
{
  if (qword_1002C4F60 != -1)
  {
    sub_10018A740();
  }

  v1 = qword_1002C4F68;

  return v1;
}

void sub_1000142A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000142BC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _autoCloseWrapper:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

int64_t sub_100014DF8(id a1, NSString *a2, id a3)
{
  v4 = a2;
  v5 = a3;
  if ([(NSString *)v4 isEqualToString:v5])
  {
    v6 = 0;
  }

  else
  {
    v7 = CPLLibraryIdentifierSystemLibrary;
    if ([(NSString *)v4 isEqualToString:CPLLibraryIdentifierSystemLibrary])
    {
      v6 = -1;
    }

    else if ([v5 isEqualToString:v7])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSString *)v4 compare:v5];
    }
  }

  return v6;
}

void sub_10001554C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v7 = v3;
  v5 = [v3 libraryIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000158D4(uint64_t a1)
{
  v2 = [*(a1 + 32) engine];
  v3 = *(a1 + 80);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015A04;
  v11[3] = &unk_100272970;
  v4 = *(a1 + 40);
  v10 = *(a1 + 48);
  v5 = *(a1 + 32);
  v15 = *(a1 + 72);
  v6 = *(a1 + 40);
  v16 = *(a1 + 80);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v10;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  v14 = *(a1 + 64);
  [v2 forceBackupWithActivity:v4 forceClientPush:v3 completionHandler:v11];
}

void sub_100015A04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100015BB0;
  v15[3] = &unk_100272948;
  v16 = v3;
  v5 = *(a1 + 40);
  v20 = *(a1 + 72);
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 32);
  v14 = v6;
  v7 = *(a1 + 48);
  v21 = *(a1 + 80);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v17 = v14;
  v18 = v9;
  v19 = *(a1 + 64);
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000027DC;
  block[3] = &unk_100271E98;
  v23 = v10;
  v11 = v4;
  v12 = v3;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v13);
}

id sub_100015BB0(void *a1)
{
  if (!a1[4])
  {
    return sub_10018ABE8(_CPLSilentLogging, a1);
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100013FC4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v3 = a1[5];
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requested forced backup failed for %@: %@", &v7, 0x16u);
    }

    v5 = a1[4];
  }

  return (*(a1[10] + 16))();
}

void sub_100015F94(id *a1)
{
  v2 = [a1[4] engine];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100016080;
  v5[3] = &unk_100272568;
  v4 = *(a1 + 2);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  [v2 performMaintenanceCleanupWithCompletionHandler:v5];
}

void sub_100016080(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 72);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018A1F8;
  v12[3] = &unk_100272568;
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v11 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v13 = v11;
  v14 = v7;
  v15 = *(a1 + 64);
  v8 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000027DC;
  block[3] = &unk_100271E98;
  v17 = v8;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v10);
}

BOOL sub_100016348(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:CPLLibraryIdentifierSystemLibrary])
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v3];
    v4 = v5 != 0;
  }

  return v4;
}

void sub_1000163B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(v3, "totalUnitCount")}];
  (*(*(a1 + 40) + 16))();
}

void sub_100016B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100016BA4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void sub_100016C0C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
    *(*(*(a1 + 80) + 8) + 24) = 1;
    (*(*(a1 + 72) + 16))();
    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
    [*(a1 + 40) setCancellationHandler:0];
    [*(a1 + 48) _removeEngineWrapperOpenObserverWithIdentifier:*(a1 + 56)];
  }
}

void sub_100016CD8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
    v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 32));
    v3 = dispatch_time(0, (*&qword_1002BEA70 * 1000000000.0));
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100016E40;
    v9[3] = &unk_100272A38;
    v4 = v2;
    v5 = *(a1 + 72);
    v10 = v4;
    v13 = v5;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    dispatch_source_set_event_handler(v4, v9);
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;
    v8 = v4;

    dispatch_resume(v8);
  }
}

void sub_100016E40(uint64_t a1)
{
  if (*(a1 + 32) == *(*(*(a1 + 56) + 8) + 40))
  {
    sub_10018AE88(a1);
  }
}

void sub_100016E78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018A39C;
  v7[3] = &unk_100272A88;
  v6 = *(a1 + 40);
  v2 = v6;
  v8 = v6;
  v3 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000027DC;
  block[3] = &unk_100271E98;
  v10 = v3;
  v4 = v1;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

void sub_100016F84(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) openError];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100016FFC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  v6 = [v8 libraryIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 40)];

  if (v7)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100017154(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v15];
  if (!v6)
  {
    v7 = [v5 openError];
    v8 = [v7 isCPLErrorWithCode:1014];

    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = [v5 parameters];
    v6 = [v9 cloudLibraryStateStorageURL];

    v10 = [v5 openError];
    v11 = [v10 userInfo];
    v12 = [v11 objectForKeyedSubscript:CPLErrorResetReason];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"no reason";
    }

    [CPLPrequeliteStore wipeStoreAtNextOpeningWithCloudLibraryStorageURL:v6 reason:v14];

    [*(a1 + 40) addObject:v15];
  }

LABEL_8:
}

void sub_1000173DC(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  v5 = [v4 libraryIdentifier];
  v6 = [v3 objectForKeyedSubscript:v5];
  v7 = v6 == 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v9 = [WeakRetained wrapperArray:*(a1 + 32) countOfClientsForWrapper:v4];

  v10 = [[CPLEngineWrapperStatus alloc] initWithWrapper:v4 clientCount:v9 isOpened:v7 openError:0];
  [*(a1 + 40) addObject:v10];
}

void sub_1000174BC(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:a2];

  if (!v5)
  {
    v6 = [CPLEngineWrapperStatus alloc];
    v7 = [v10 parameters];
    v8 = [v10 openError];
    v9 = [(CPLEngineWrapperStatus *)v6 initWithParameters:v7 clientCount:0 isOpened:0 openError:v8];

    [*(a1 + 40) addObject:v9];
  }
}

void sub_100017678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017690(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 engine];
  v5 = [v4 configuration];
  v6 = [v5 configurationDictionary];
  if (v3)
  {
    v11 = v6;

    if ([*(*(*(a1 + 32) + 8) + 40) compare:v11] != -1)
    {
      v7 = v11;
      goto LABEL_7;
    }

    v10 = *(*(a1 + 32) + 8);
    v4 = v11;
    v5 = *(v10 + 40);
    *(v10 + 40) = v4;
  }

  else
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;
  }

  v7 = v4;
LABEL_7:
}

void sub_100017858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017870(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 engine];
  v5 = [v4 configuration];
  v6 = [v5 configurationDictionary];
  if (!v3)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;

    goto LABEL_5;
  }

  v11 = v6;

  if ([*(*(*(a1 + 32) + 8) + 40) compare:v11] == 1)
  {
    v7 = *(*(a1 + 32) + 8);
    v4 = v11;
    v5 = *(v7 + 40);
    *(v7 + 40) = v4;
LABEL_5:

    v10 = v4;
    goto LABEL_7;
  }

  v10 = v11;
LABEL_7:
}

void sub_100017CCC(uint64_t a1, void *a2)
{
  v4 = [a2 engine];
  v3 = [v4 configuration];
  [v3 updateConfigurationDictionary:*(a1 + 32)];
}

void sub_100017D30(id a1, NSString *a2, CPLEngineWrapper *a3, BOOL *a4)
{
  v4 = a3;
  if (![(CPLEngineWrapper *)v4 inEmergencyClosing])
  {
    sub_10018AF70(v4);
  }
}

void sub_100018750(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.wrapper.array");
  v3 = qword_1002C4F68;
  qword_1002C4F68 = v2;
}

void sub_1000187BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1000187E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void sub_10001893C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018958(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_10018B0B8(WeakRetained, a2);
}

void sub_100018B18(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_100018B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100018C44(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

void sub_100018C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100018DEC(uint64_t a1)
{
  if ([*(a1 + 32) shouldDefer])
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    if (!*(*(a1 + 32) + 32))
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = *(a1 + 32);
      v6 = *(v5 + 32);
      *(v5 + 32) = v4;
    }

    v8 = [*(a1 + 48) copy];
    v7 = objc_retainBlock(v8);
    [*(*(a1 + 32) + 32) setObject:v7 forKeyedSubscript:*(a1 + 40)];
  }
}

id sub_100019000(uint64_t a1)
{
  [*(a1 + 32) activityHasExpiredWithReason:*(a1 + 40)];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_100019158;
  v11 = &unk_100271F68;
  v2 = *(a1 + 40);
  v12 = *(a1 + 32);
  v3 = v12;
  v13 = v2;
  v4 = v9;
  os_unfair_lock_lock(v3 + 2);
  v10(v4);
  os_unfair_lock_unlock(v3 + 2);

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019180;
  v8[3] = &unk_100272C30;
  v8[4] = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
  return [*(*(a1 + 32) + 32) removeAllObjects];
}

void sub_100019130(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

uint64_t sub_100019158(uint64_t result)
{
  v1 = *(result + 40);
  *(*(result + 32) + 12) = 1;
  *(*(result + 32) + 16) = v1;
  return result;
}

void sub_100019318(uint64_t a1)
{
  v3 = *(*(a1 + 32) + 40);
  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;

    v3 = *(*(a1 + 32) + 40);
  }

  v10 = [*(a1 + 40) metricsIdentifier];
  v11 = [v3 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = *(*(a1 + 32) + 48);
    v13 = [*(a1 + 40) metricsIdentifier];
    v14 = [v12 objectForKeyedSubscript:v13];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v11 performanceMetricIdentifier];
    }

    v23 = v16;
  }

  else
  {
    if (*(a1 + 68) == 1 && !*(a1 + 56))
    {
      v23 = 0;
      v11 = 0;
      goto LABEL_41;
    }

    v17 = [*(*(a1 + 32) + 56) identifier];
    v18 = [*(a1 + 40) metricsIdentifier];
    v19 = [NSString stringWithFormat:@"%@.%@", v17, v18];

    v20 = [*(*(a1 + 32) + 56) identifier];
    v21 = +[CPLBGSTReschedulerManager taskIdentifierForSystemLibrary];
    LODWORD(v18) = [v20 isEqualToString:v21];

    if (v18)
    {
      v22 = [*(a1 + 40) metricsIdentifier];
    }

    else
    {
      v22 = v19;
    }

    v23 = v22;
    v24 = *(*(a1 + 32) + 48);
    v25 = [*(a1 + 40) metricsIdentifier];
    [v24 setObject:v23 forKeyedSubscript:v25];

    v26 = [BGSystemTaskThroughputMetrics alloc];
    v27 = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
    v11 = [v26 initWithIdentifier:v19 qos:v27 workloadCategory:10 expectedMetricValue:0];

    v28 = *(*(a1 + 32) + 40);
    v29 = [*(a1 + 40) metricsIdentifier];
    [v28 setObject:v11 forKeyedSubscript:v29];

    v30 = *(*(a1 + 32) + 56);
    v31 = [*(a1 + 40) startTime];
    v50 = 0;
    v1 = [v30 registerThroughputTrackingFor:v11 withStartTime:v31 error:&v50];
    v32 = v50;

    if ((v1 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
    {
      v33 = sub_1000198EC();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v52 = v23;
        v53 = 2112;
        v54 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "'%{public}@' failed to register throughput tracking: %@", buf, 0x16u);
      }
    }
  }

  if ((*(a1 + 68) != 1 || *(a1 + 56)) && (_CPLSilentLogging & 1) == 0)
  {
    v34 = sub_1000198EC();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 56);
      *buf = 138543618;
      v52 = v23;
      v53 = 2048;
      v54 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "'%{public}@' added item count: %lu", buf, 0x16u);
    }
  }

  [v11 addItemCount:*(a1 + 56)];
  if (*(a1 + 68) == 1)
  {
    v36 = *(*(a1 + 32) + 56);
    v37 = *(a1 + 48);
    v49 = 0;
    v38 = [v36 deregisterThroughputTrackingFor:v11 withEndTime:v37 error:&v49];
    v39 = v49;
    if (v38)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v40 = sub_1000198EC();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v11 startTimestamp];
          if (v41)
          {
            v1 = [v11 startTimestamp];
            v42 = [CPLDateFormatter stringFromDateAgo:v1 now:*(a1 + 48)];
          }

          else
          {
            v42 = @"with no date";
          }

          v43 = [v11 itemCount];
          *buf = 138543874;
          v52 = v23;
          v53 = 2114;
          v54 = v42;
          v55 = 2048;
          v56 = v43;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "'%{public}@' task finished work, started %{public}@, itemCount: %lu", buf, 0x20u);
          if (v41)
          {
          }
        }

LABEL_39:
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v40 = sub_1000198EC();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v52 = v23;
        v53 = 2112;
        v54 = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "'%{public}@' failed to deregister metrics: %@", buf, 0x16u);
      }

      goto LABEL_39;
    }

    v44 = *(*(a1 + 32) + 40);
    v45 = [*(a1 + 40) metricsIdentifier];
    [v44 setObject:0 forKeyedSubscript:v45];

    v46 = *(a1 + 40);
    v47 = *(*(a1 + 32) + 48);
    v48 = [v46 metricsIdentifier];
    [v47 setObject:0 forKeyedSubscript:v48];
  }

LABEL_41:
}

id sub_1000198EC()
{
  if (qword_1002C4F70 != -1)
  {
    sub_10018B1B8();
  }

  v1 = qword_1002C4F78;

  return v1;
}

void sub_10001A0AC(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "daemon.cloudkitrescheduler.bgst.activity");
  v3 = qword_1002C4F78;
  qword_1002C4F78 = v2;
}

void sub_10001A420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A440(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    sub_10018DD90(WeakRetained, a1);
  }
}

id sub_10001A484()
{
  if (qword_1002C4F80 != -1)
  {
    sub_10018DEC0();
  }

  v1 = qword_1002C4F88;

  return v1;
}

id sub_10001A96C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 setDelegate:0];
}

void sub_10001AACC(uint64_t a1)
{
  [*(*(a1 + 32) + 8) markLibraryManagerAsInvalid];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B28C;
  v9[3] = &unk_1002723C8;
  v2 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v2;
  v3 = objc_retainBlock(v9);
  v4 = *(a1 + 32);
  if (v4[11])
  {
    v5 = [v4 _clientWithErrorHandler:&stru_100272D80];
    [v5 libraryManagerHasBeenReplaced];

    v6 = *(*(a1 + 32) + 88);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001ACA0;
    v7[3] = &unk_100271E98;
    v8 = v3;
    [v6 scheduleSendBarrierBlock:v7];
  }

  else
  {
    (v3[2])(v3);
  }
}

uint64_t sub_10001AC18(uint64_t a1)
{
  [*(*(a1 + 32) + 88) invalidate];
  [*(*(a1 + 32) + 88) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  *(v2 + 88) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  [WeakRetained daemonLibraryManagerHasBeenDisconnected:*(a1 + 32)];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

uint64_t sub_10001ADC8(uint64_t a1)
{
  [*(*(a1 + 32) + 88) invalidate];
  [*(*(a1 + 32) + 88) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  *(v2 + 88) = 0;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  [WeakRetained daemonLibraryManagerHasBeenDisconnected:*(a1 + 32)];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_10001AFF4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001B118;
  v8[3] = &unk_100271DE0;
  v8[4] = v3;
  v9 = v2;
  v10 = *(a1 + 48);
  v5 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002874;
  block[3] = &unk_100271E98;
  v12 = v5;
  v6 = v4;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

void sub_10001B280(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != a2)
  {
    v9 = v2;
    v10 = v3;
    v5 = *(a1 + 40);
    v6 = a2;
    dispatch_group_enter(v5);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001B33C;
    v7[3] = &unk_100271F40;
    v8 = *(a1 + 40);
    [v6 _dropWithCompletionBlock:v7];
  }
}

void sub_10001B4F8(void *a1)
{
  v2 = a1 + 4;
  WeakRetained = objc_loadWeakRetained((a1[4] + 112));
  v4 = *v2;
  v5 = a1[8];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[9];
  v10 = a1[11];
  v25 = 0;
  v11 = [WeakRetained daemonLibraryManager:v4 engineWrapperWithClientLibraryBaseURL:v6 cloudLibraryStateStorageURL:v7 cloudLibraryResourceStorageURL:v8 libraryIdentifier:v5 mainScopeIdentifier:v9 options:v10 error:&v25];
  v12 = v25;
  v13 = *(*v2 + 104);
  *(*v2 + 104) = v11;

  if (*(*v2 + 104))
  {
    v18 = [[CPLLibraryManager alloc] initWithClientLibraryBaseURL:a1[5] cloudLibraryStateStorageURL:a1[6] cloudLibraryResourceStorageURL:a1[7] libraryIdentifier:a1[8] mainScopeIdentifier:a1[9] options:a1[11]];
    v19 = a1[4];
    v20 = *(v19 + 8);
    *(v19 + 8) = v18;

    [*(a1[4] + 8) setDelegate:?];
    [*(a1[4] + 8) setResourceProgressDelegate:?];
    [*(a1[4] + 8) setForceSyncDelegate:?];
    [*(a1[4] + 8) setRecordComputeStateDelegate:?];
    v21 = [*(a1[4] + 8) platformObject];
    v22 = a1[4];
    v23 = *(v22 + 16);
    *(v22 + 16) = v21;

    v24 = *(a1[4] + 16);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10018E004(a1, v2);
    }

    sub_10018E110();
  }

  else
  {
    if ([v12 isCPLErrorWithCode:2005])
    {
      v14 = objc_loadWeakRetained((*v2 + 112));

      if (v14)
      {
        sub_10018E298(_CPLSilentLogging, v2, a1 + 8);
        goto LABEL_9;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = sub_10001A484();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = *v2;
          v17 = a1[8];
          *buf = 138412546;
          v27 = v16;
          v28 = 2114;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ tried to open a mismatched %{public}@ but there is not delegate to reset parameters", buf, 0x16u);
        }
      }
    }

    (*(a1[10] + 16))(a1[10], v12, 0, 0);
  }

LABEL_9:
}

void sub_10001B778(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_10001A484();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        *buf = 138412546;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ failed to open with error: %@", buf, 0x16u);
      }
    }

    if ([v3 isCPLErrorWithCode:2003])
    {
      v6 = *(*(a1 + 40) + 56);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10001BBFC;
      v33[3] = &unk_100271DE0;
      v7 = v3;
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v34 = v7;
      v35 = v8;
      v36 = v9;
      v10 = v33;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100002874;
      v40 = &unk_100271E98;
      v41 = v10;
      v11 = v6;
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v11, v12);
    }

    else
    {
      (*(*(a1 + 48) + 16))(*(a1 + 48), v3, 0, 0);
    }
  }

  else
  {
    v13 = [*(a1 + 32) libraryVersion];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_10001A484();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 32);
        *buf = 138412546;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@ opened successfully with version %@", buf, 0x16u);
      }
    }

    v32 = v13;
    v37[0] = @"status";
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) status]);
    v37[1] = @"error";
    v38[0] = v16;
    v17 = [*(a1 + 32) statusError];
    v18 = v17;
    if (!v17)
    {
      v18 = +[NSNull null];
    }

    v38[1] = v18;
    v31 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
    if (!v17)
    {
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10001A484();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 40);
        v21 = *(v20 + 104);
        *buf = 138412546;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ attached to daemon's engine %@", buf, 0x16u);
      }
    }

    v22 = *(a1 + 48);
    v30 = [*(a1 + 32) sizeOfResourcesToUpload];
    v23 = [*(a1 + 32) sizeOfOriginalResourcesToUpload];
    v24 = [*(a1 + 32) numberOfImagesToUpload];
    v25 = [*(a1 + 32) numberOfVideosToUpload];
    v26 = [*(a1 + 32) numberOfOtherItemsToUpload];
    v27 = [*(*(a1 + 40) + 104) libraryIdentifier];
    v28 = [*(*(a1 + 40) + 104) mainScopeIdentifier];
    v29 = [*(*(a1 + 40) + 104) clientLibraryBaseURL];
    (*(v22 + 16))(v22, 0, v31, v30, v23, v24, v25, v26, v32, v27, v28, v29);
  }
}

void sub_10001BBFC(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:CPLErrorWipeReasonKey];
  v4 = v3;
  v5 = @"mismatched library options between client and engine";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = *(*(a1 + 40) + 104);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001BCFC;
  v8[3] = &unk_1002723C8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  [v7 wipeWithReason:v6 completionHandler:v8];
}

void sub_10001BCFC(uint64_t a1)
{
  v2 = [CPLErrors cplErrorWithCode:2004 underlyingError:*(a1 + 32) description:@"Library has been wiped because library options are mismatched"];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v2, 0, 0);
}

void sub_10001C0AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v3 = *(*(a1 + 32) + 104);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001C174;
  v6[3] = &unk_100272E20;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v6[4] = *(a1 + 32);
  v5 = v2;
  [v3 deactivateWithCompletionHandler:v6];
}

void sub_10001C174(void *a1)
{
  (*(a1[6] + 16))();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C230;
  v4[3] = &unk_100271F40;
  v4[4] = a1[4];
  v2 = objc_retainBlock(v4);
  v3 = a1[5];
  if (v3)
  {
    [v3 scheduleSendBarrierBlock:v2];
  }

  else
  {
    (v2[2])(v2);
  }
}

id sub_10001C230(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10018B480;
  v3[3] = &unk_100271F40;
  v3[4] = v1;
  return [v1 _dropManagerWithCompletionBlock:v3];
}

void sub_10001C660(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 taskIdentifier];
  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_10001A484();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);
        v8 = 138413058;
        v9 = v3;
        v10 = 2112;
        v11 = v4;
        v12 = 2112;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Got %@ with identifier %@ for %@(%@)", &v8, 0x2Au);
      }
    }

    [*(*(a1 + 48) + 24) setObject:v3 forKey:v4];
    [*(a1 + 48) _storeVoucher:*(a1 + 56) forTaskWithIdentifier:v4];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    sub_10018E6D4(_CPLSilentLogging, a1);
  }
}

void sub_10001CAB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    sub_10018E784();
  }

  else
  {
    sub_10018E824(_CPLSilentLogging, v5, a1);
  }
}

void sub_10001CDAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    sub_10018E8E0();
  }

  else
  {
    sub_10018E980(_CPLSilentLogging, v5, a1);
  }
}

void sub_10001D010(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    sub_10018EB08();
  }

  else
  {
    sub_10018EBA8(_CPLSilentLogging, a1);
  }
}

void sub_10001D284(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    sub_10018ECE4();
  }

  else
  {
    sub_10018ED94(_CPLSilentLogging);
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10001D6B8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    sub_10018EF04();
  }

  else
  {
    sub_10018EFA8();
  }
}

void sub_10001D978(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10001A484();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412290;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Comitting batch failed with error %@", &v14, 0xCu);
      }
    }

    v12 = *(*(a1 + 32) + 16);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_10001A484();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Comitting batch succeeded with new library version %@", &v14, 0xCu);
      }
    }

    v12 = *(*(a1 + 32) + 16);
  }

  v12();
}

void sub_10001E7E8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplSafeErrorForXPC];
  (*(v2 + 16))(v2, v3);
}

void sub_10001E904(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplSafeErrorForXPC];
  (*(v2 + 16))(v2, v3);
}

void sub_10001EA34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplSafeErrorForXPC];
  (*(v2 + 16))(v2, v3);
}

void sub_10001EEB8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cplSafeErrorForXPC];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10001F138(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = *(a1 + 32);
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  v15 = [a6 cplSafeErrorForXPC];
  (*(v10 + 16))(v10, v14, v13, v12, v11, v15);
}

void sub_10001F398(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = [a4 cplSafeErrorForXPC];
  (*(v6 + 16))(v6, a2, a3, v7);
}

void sub_10001F5D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 taskIdentifier];
  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_10001A484();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 32);
        v7 = 138412802;
        v8 = v3;
        v9 = 2112;
        v10 = v4;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Got %@ with identifier %@ for %@", &v7, 0x20u);
      }
    }

    [*(*(a1 + 40) + 24) setObject:v3 forKey:v4];
    [*(a1 + 40) _storeVoucher:*(a1 + 48) forTaskWithIdentifier:v4];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    sub_10018FA10(_CPLSilentLogging, a1);
  }
}

void sub_10001F99C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cplSafeErrorForXPC];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10001FBB8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cplSafeErrorForXPC];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10001FDD8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplSafeErrorForXPC];
  (*(v2 + 16))(v2, v3);
}

void sub_10001FFD8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cplSafeErrorForXPC];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_1000201F4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cplSafeErrorForXPC];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_10002040C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cplSafeErrorForXPC];
  (*(v2 + 16))(v2, v3);
}

void sub_1000205F0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cplSafeErrorForXPC];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_100020824(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cplSafeErrorForXPC];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_100020A6C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cplSafeErrorForXPC];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_100020C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 cplSafeErrorForXPC];
  (*(v4 + 16))(v4, a2, v5);
}

void sub_100020EF4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 cplSafeErrorForXPC];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_100021138(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 taskIdentifier];
  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_10001A484();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = [*(a1 + 32) componentsJoinedByString:{@", "}];
        v7 = 138412802;
        v8 = v3;
        v9 = 2112;
        v10 = v4;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Got %@ with identifier %@ for %@", &v7, 0x20u);
      }
    }

    [*(*(a1 + 40) + 40) setObject:v3 forKeyedSubscript:v4];
    [*(a1 + 40) _storeVoucher:*(a1 + 48) forTaskWithIdentifier:v4];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    sub_10018FB68(_CPLSilentLogging, a1);
  }
}

void sub_10002128C(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018C768;
  v4[3] = &unk_100272468;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientWithErrorHandler:v4];
  [v3 downloadDidStartForResourceTransferTask:*(a1 + 48)];
}

void sub_10002132C(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10018C984;
  v5[3] = &unk_100272468;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [v2 _clientWithErrorHandler:v5];
  LODWORD(v4) = *(a1 + 56);
  [v3 downloadDidProgress:*(a1 + 48) forResourceTransferTask:v4];
}

void sub_1000213D0(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018CBE4;
  v7[3] = &unk_100272468;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = [v2 _clientWithErrorHandler:v7];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) cplSafeErrorForXPC];
  [v3 downloadDidFinishForResourceTransferTask:v4 finalResource:v5 withError:v6];
}

void sub_10002149C(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10018CE3C;
  v7[3] = &unk_100272468;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = [v2 _clientWithErrorHandler:v7];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) cplSafeErrorForXPC];
  [v3 inMemoryDownloadDidFinishForResourceTransferTask:v4 data:v5 withError:v6];
}

void sub_100021600(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 cplSafeErrorForXPC];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_100021674(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10018DCD8;
  v4[3] = &unk_100272468;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _clientWithErrorHandler:v4];
  [v3 forceSyncDidFinishForTask:*(a1 + 48) withErrors:*(a1 + 56)];
}

void sub_100021820(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000218C8;
  v4[3] = &unk_100272EC0;
  v5 = *(a1 + 56);
  v3 = [v2 _clientWithErrorHandler:v4];
  [v3 providePayloadForComputeStates:*(a1 + 40) inFolderWithURL:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void sub_100021C88(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "daemon.proxy");
  v3 = qword_1002C4F88;
  qword_1002C4F88 = v2;
}

void sub_100021D94(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100021DC0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

BOOL sub_100021E20(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL sub_100021E38(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void sub_100021E60(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, a5, 0x2Au);
}

void sub_100021EC0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, v15, OS_LOG_TYPE_DEFAULT, a4, &buf, 0xCu);
}

BOOL sub_100021EE0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

void sub_100022024(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained batterySaverWatcherDidChangeState:*(a1 + 32)];
}

void sub_100022188(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[24] == 1 && [v2 _updateBatterySaverMode])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    [WeakRetained batterySaverWatcherDidChangeState:*(a1 + 32)];
  }
}

void sub_100022348()
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();

  CFNotificationCenterPostNotification(DistributedCenter, @"com.apple.cpl.wantslibrary.notification", 0, 0, 1u);
}

id sub_100023390(id a1)
{

  return a1;
}

void sub_1000233B4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

id sub_100023BA4()
{
  if (qword_1002C4FA0 != -1)
  {
    sub_1001903BC();
  }

  v1 = qword_1002C4FA8;

  return v1;
}

void sub_100023CC4(id a1)
{
  v1 = [NSSet alloc];
  v2 = [v1 initWithObjects:{CPLLibraryIdentifierSystemLibrary, CPLLibraryIdentifierSyndicationLibrary, 0}];
  v3 = qword_1002C4F90;
  qword_1002C4F90 = v2;
}

void sub_100024778(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 hasPrefix:@"CPLEngineParameters-"])
  {
    v3 = [v6 length];
    if (v3 > [@"CPLEngineParameters-" length])
    {
      v4 = [v6 substringWithRange:{objc_msgSend(@"CPLEngineParameters-", "length"), objc_msgSend(v6, "length") - objc_msgSend(@"CPLEngineParameters-", "length")}];
      v5 = [*(a1 + 32) parametersForLibraryIdentifier:v4];
      if (v5)
      {
        [*(a1 + 40) addObject:v5];
      }
    }
  }
}

int64_t sub_100024860(id a1, CPLEngineParameters *a2, CPLEngineParameters *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CPLEngineParameters *)v4 libraryIdentifier];
  v7 = [(CPLEngineParameters *)v5 libraryIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(CPLEngineParameters *)v4 libraryIdentifier];
    v11 = CPLLibraryIdentifierSystemLibrary;
    v12 = [v10 isEqualToString:CPLLibraryIdentifierSystemLibrary];

    if (v12)
    {
      v9 = -1;
    }

    else
    {
      v13 = [(CPLEngineParameters *)v5 libraryIdentifier];
      v14 = [v13 isEqualToString:v11];

      if (v14)
      {
        v9 = 1;
      }

      else
      {
        v15 = [(CPLEngineParameters *)v4 libraryIdentifier];
        v16 = [(CPLEngineParameters *)v5 libraryIdentifier];
        v9 = [v15 compare:v16];
      }
    }
  }

  return v9;
}

void sub_100024D88(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.parameters");
  v3 = qword_1002C4FA8;
  qword_1002C4FA8 = v2;
}

void sub_100025050(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_100025064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100025154(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_10002529C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1000252B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000253BC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1000253D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_1000253F0(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000254C0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

id sub_1000254E8(uint64_t a1)
{
  v2 = [*(a1 + 40) identifier];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  [*(a1 + 40) expectedDuration];
  *(*(a1 + 32) + 112) = v5;
  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  if (v7 == 0.0)
  {
    v8 = [*(a1 + 40) cplRequestsImmediateRuntime];
    v9 = *(*(a1 + 32) + 128);
    if (v8)
    {
      [v9 maximumRuntimeForImmediateRun];
    }

    else
    {
      [v9 minimumRuntime];
    }

    *(*(a1 + 32) + 112) = v10;
    v6 = *(a1 + 32);
    v7 = *(v6 + 112);
  }

  [*(v6 + 128) minimumRuntimeLeeway];
  v12 = v7 - v11;
  result = [*(*(a1 + 32) + 128) minimumRuntimeLeeway];
  if (v12 >= v14)
  {
    v14 = v12;
  }

  *(*(a1 + 32) + 112) = v14;
  return result;
}

void sub_1000256BC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1000256D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000257C0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_100025A60(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_100025A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100025AAC(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 40));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 48));
  v2 = *(a1[4] + 56);
  v3 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_100025C0C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) allKeys];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100025CA0()
{
  if (qword_1002C4FB0 != -1)
  {
    sub_100190EC4();
  }

  v1 = qword_1002C4FB8;

  return v1;
}

void sub_100025ED8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_100025F00(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = [*(v2 + 128) now];
    v2 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 48);
  *(v2 + 48) = v3;

  v5 = *(a1 + 40);
  v6 = *(v5 + 56);
  *(v5 + 56) = 0;

  *(*(a1 + 40) + 64) = 0;
  v7 = *(a1 + 32);
  v8 = (*(a1 + 40) + 16);

  objc_storeStrong(v8, v7);
}

void sub_100026490(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) currentActivity];

  if (v2 == v3)
  {
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000265A4;
    v11 = &unk_1002733A0;
    v4 = *(a1 + 48);
    v6 = *(a1 + 56);
    v12 = *(a1 + 40);
    v5 = v12;
    v14 = v4;
    v15 = v6;
    v13 = *(a1 + 32);
    v7 = &v8;
    os_unfair_lock_lock(v5 + 2);
    v10(v7);
    os_unfair_lock_unlock(v5 + 2);

    [*(*(a1 + 40) + 128) activityHasExpired:*(a1 + 32) reason:*(a1 + 56) forRescheduler:{v8, v9}];
  }
}

void sub_10002657C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1000265A4(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (!*(v2 + 48))
  {
    sub_1001913E4(a1, v3);
  }

  sub_100191284(v2, v3, a1);
}

void sub_10002680C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_100026820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100026840(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    result = [result shouldDefer];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100026984(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_100026998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000269B8(void *result)
{
  v1 = result;
  v2 = result[4];
  if (v2[8] == 1 || v2[6] && (result = v2[7]) != 0 && (result = [result timeIntervalSinceDate:?], v3 > *(v1[4] + 112)))
  {
    *(*(v1[5] + 8) + 24) = 1;
  }

  return result;
}

void sub_100026B00(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_100026B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100026B34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  if (v2)
  {
    v4 = *(v1 + 112);
    v5 = [*(v1 + 128) now];
    [v2 timeIntervalSinceDate:v5];
    *(*(*(a1 + 40) + 8) + 24) = v4 + v6;

    *(*(*(a1 + 40) + 8) + 24) = fmax(*(*(*(a1 + 40) + 8) + 24), 10.0);
  }
}

void sub_100026CDC(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) currentActivity];
  if (!v3)
  {
    [*v2 _updateRequestIfNecessary];
    goto LABEL_12;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100004380;
  v39 = sub_1000052A4;
  v40 = 0;
  v4 = *v2;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v31 = sub_100027118;
  v32 = &unk_100272028;
  v33 = v4;
  v34 = &v35;
  v5 = v30;
  os_unfair_lock_lock(v4 + 2);
  v31(v5);
  os_unfair_lock_unlock(v4 + 2);

  if (!v36[5])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [*v2 taskIdentifier];
        sub_10019167C(v19, buf, v18);
      }
    }

    v20 = +[NSAssertionHandler currentHandler];
    v21 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    v24 = [*v2 taskIdentifier];
    [v20 handleFailureInMethod:v21 object:v22 file:v23 lineNumber:408 description:{@"%@ has been deferred without any current task", v24}];

    goto LABEL_21;
  }

  v6 = objc_retainBlock(*(a1 + 40));
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;

  v9 = *(a1 + 32);
  v10 = [v3 request];
  [v9 _setRequest:v10];

  [*v2 _setCurrentActivity:0];
  v11 = [*(*v2 + 16) now];
  sub_1001914A4(v11, v2);
  v12 = [*(*v2 + 16) resubmitTaskRequestForRescheduler:*v2 updatedPrediction:*(*v2 + 10) afterTaskHasBeenDeferred:v36[5]];
  v13 = *(*v2 + 10);
  *(*v2 + 10) = 0;

  v14 = [*v2 request];
  LOBYTE(v9) = v12 == v14;

  if ((v9 & 1) == 0)
  {
    if (v12)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = sub_100025CA0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [*(*v2 + 12) identifier];
          v17 = [v12 identifier];
          sub_100191578(v16, v17, buf, v15);
        }
      }

      [*v2 _setRequest:v12];
      [*v2 _updateTaskIdentifierWithRequest:v12];
      goto LABEL_10;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v25 = __CPLGenericOSLogDomain();
      sub_1001915E8(v25);
    }

    v26 = +[NSAssertionHandler currentHandler];
    v27 = *(a1 + 48);
    v28 = *(a1 + 32);
    v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
    [v26 handleFailureInMethod:v27 object:v28 file:v29 lineNumber:424 description:{@"Unexpected nil request after resubmitting %@", 0}];

LABEL_21:
    abort();
  }

LABEL_10:
  [*v2 _scheduleBlockedTimeout];

  _Block_object_dispose(&v35, 8);
LABEL_12:
}

void sub_1000270A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100027118(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) task];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100027528(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = a1[6];
  v4 = a1[4];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [v2 handleFailureInMethod:v3 object:v4 file:v5 lineNumber:475 description:{@"Engine has closed for %@ 30s ago and the process is still running", a1[5]}];

  abort();
}

void sub_10002785C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_100027870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000279F4(uint64_t a1)
{
  v8 = [*(a1 + 32) acquireError];
  if (v8)
  {
    v2 = *(*(a1 + 48) + 16);
LABEL_5:
    v2();
    goto LABEL_6;
  }

  v3 = [*(a1 + 32) currentActivity];

  if (v3)
  {
    v2 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  if (!*(*(a1 + 32) + 24))
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;
  }

  v7 = objc_retainBlock(*(a1 + 48));
  [*(*(a1 + 32) + 24) setObject:v7 forKeyedSubscript:*(a1 + 40)];

  [*(a1 + 32) _submitTaskRequest];
LABEL_6:
}

id sub_100027BF0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 24);

    return [v4 removeObjectForKey:v3];
  }

  return result;
}

void *sub_100027DA4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[11] == *(a1 + 40))
  {
    return [result _sessionTimerFired];
  }

  return result;
}

void *sub_100028230(void *result)
{
  *(*(result[6] + 8) + 24) = *(result[4] + 48) != 0;
  if (*(*(result[6] + 8) + 24) == 1)
  {
    v1 = result;
    result = [*(result[4] + 24) isEqualToString:result[5]];
    *(*(v1[6] + 8) + 24) = result;
  }

  return result;
}

uint64_t sub_100028348(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 56) || *(v1 + 48) || *(v1 + 24) || *(v1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 40) ^ 1;
  }

  *(*(*(result + 40) + 8) + 24) = v2 & 1;
  return result;
}

void sub_10002A3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002A3EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    sub_1001924B8(a1);
  }
}

void sub_10002A594(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _persistedSyncSessionForScheduler:*(a1 + 40) startSyncSessionBlock:*(a1 + 48)];
  if (v3)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_100025CA0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *v2;
        v6 = *(*v2 + 24);
        v7 = 138412546;
        v8 = v5;
        v9 = 2114;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found persisted request for %@ (%{public}@)", &v7, 0x16u);
      }
    }

    [*(*(a1 + 32) + 104) didDefer];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    sub_100192544(_CPLSilentLogging, v2, a1);
  }
}

id sub_10002A7A4(uint64_t a1)
{
  v2 = a1 + 32;
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_100025CA0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*v2 + 48);
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dropping initial %@", &v6, 0xCu);
      }

      result = *(*v2 + 48);
    }

    result = [result _sessionIsDoneOrWontHappen];
    if (*(*v2 + 48))
    {
      sub_10019260C(a1, v2);
    }
  }

  return result;
}

void sub_10002AC28(void *a1)
{
  v2 = (a1 + 4);
  v3 = [*(a1[4] + 104) statusWithNow:a1[5] prefix:@"Task"];
  v18 = v3;
  v4 = [NSArray arrayWithObjects:&v18 count:1];
  v5 = *(v2[2] + 1);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *v2;
  if (!*(*v2 + 4) && !v7[8] && !v7[9])
  {
    return;
  }

  v8 = [*(*(a1[6] + 8) + 40) mutableCopy];
  v9 = a1[4];
  if (*(v9 + 32))
  {
    v10 = @"Current request: %@";
    v11 = 32;
LABEL_8:
    v12 = [NSString alloc];
    v13 = [*v2 _summaryForTaskRequest:*(*v2 + v11)];
    v14 = [v12 initWithFormat:v10, v13];
    [v8 addObject:v14];

    goto LABEL_9;
  }

  if (*(v9 + 64))
  {
    v10 = @"Last request: %@";
    v11 = 64;
    goto LABEL_8;
  }

LABEL_9:
  if (*(*v2 + 9))
  {
    sub_1001926F0(*v2, v2, v8);
  }

  v15 = [v8 copy];
  v16 = *(a1[6] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void sub_10002B024(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "daemon.cloudkitrescheduler.bgst.rescheduler");
  v3 = qword_1002C4FB8;
  qword_1002C4FB8 = v2;
}

void sub_10002B064(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

BOOL sub_10002B0A8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_10002B0D4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_10002B33C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "diskarbitration");
  v3 = qword_1002C4FC8;
  qword_1002C4FC8 = v2;
}

void sub_10002B6A4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&stru_1002C4FD4);
  objc_exception_rethrow();
}

void sub_10002B6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002B6DC(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [qword_1002C4FF0 objectForKeyedSubscript:*(a1 + 32)];

  if (v3)
  {
    sub_100192A18(a1, (a1 + 32));
  }

  v4 = [*(a1 + 72) _cloudKitReschedulerManagerForLibraryWithIdentifier:*(a1 + 32) involvedProcesses:*(a1 + 40) relatedApplications:*(a1 + 48)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 56) + 8) + 40);
  if (!v7)
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v16 = sub_10002B988();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *v2;
      v22 = 138412290;
      v23 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ will not use a rescheduler manager", &v22, 0xCu);
    }

    goto LABEL_15;
  }

  v8 = qword_1002C4FF0;
  if (!qword_1002C4FF0)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = qword_1002C4FF0;
    qword_1002C4FF0 = v9;

    v7 = *(*(*(a1 + 56) + 8) + 40);
    v8 = qword_1002C4FF0;
  }

  [v8 setObject:v7 forKeyedSubscript:*(a1 + 32)];
  v11 = *(*(*(a1 + 56) + 8) + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = qword_1002C4FE8;
    if (!qword_1002C4FE8)
    {
      v13 = objc_alloc_init(NSMutableSet);
      v14 = qword_1002C4FE8;
      qword_1002C4FE8 = v13;

      v12 = qword_1002C4FE8;
    }

    v15 = [*(*(*(a1 + 56) + 8) + 40) taskIdentifier];
    [v12 addObject:v15];

    [*(a1 + 72) _saveRegisteredTaskIdentifiers];
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = sub_10002B988();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(*(a1 + 56) + 8) + 40);
      v18 = *(a1 + 32);
      v19 = [*(a1 + 40) componentsJoinedByString:{@", "}];
      v20 = [*(a1 + 48) componentsJoinedByString:{@", "}];
      v22 = 138413058;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Providing %@ for %{public}@\nInvolved Processes: %@\nRelated Applications: %@", &v22, 0x2Au);
    }

LABEL_15:
  }
}

id sub_10002B988()
{
  if (qword_1002C4FD8 != -1)
  {
    sub_100192B0C();
  }

  v1 = qword_1002C4FE0;

  return v1;
}

void sub_10002BAE4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&stru_1002C4FD4);
  objc_exception_rethrow();
}

void sub_10002BAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002BB1C(uint64_t a1)
{
  v2 = [qword_1002C4FF0 objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    sub_100192B20((a1 + 32), a1 + 40, a1);
  }
}

void sub_10002BC34(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&stru_1002C4FD4);
  objc_exception_rethrow();
}

uint64_t sub_10002BC60(uint64_t result)
{
  if (byte_1002C4FD0 == 1)
  {
    sub_100192C70(result);
  }

  byte_1002C4FD0 = 1;
  return result;
}

void sub_10002BD4C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&stru_1002C4FD4);
  objc_exception_rethrow();
}

void sub_10002BD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002BD84(uint64_t a1)
{
  byte_1002C4FD0 = 0;
  v2 = [qword_1002C4FF0 objectForKeyedSubscript:CPLLibraryIdentifierSystemLibrary];
  *(*(*(a1 + 32) + 8) + 24) = v2 != 0;

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"_CPLRegisteredTaskIdentifiers"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [[NSMutableSet alloc] initWithArray:v4];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = qword_1002C4FE8;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v27;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if ((v9 & 1) != 0 || [v5 containsObject:*(*(&v26 + 1) + 8 * i)])
          {
            [v5 removeObject:v12];
          }

          else
          {
            v9 = 1;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if ([v5 count])
    {
      v20 = v4;
      v21 = a1;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = v5;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v22 + 1) + 8 * j);
            if ((_CPLSilentLogging & 1) == 0)
            {
              v19 = sub_10002B988();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v31 = v18;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Unregistering unused Background System Task %@", buf, 0xCu);
              }
            }

            [CPLBGSTReschedulerManager unregisterUnusedReschedulerWithTaskIdentifier:v18, v20, v21];
          }

          v15 = [v13 countByEnumeratingWithState:&v22 objects:v32 count:16];
        }

        while (v15);
      }

      v4 = v20;
      a1 = v21;
      goto LABEL_33;
    }

    if (v9)
    {
LABEL_33:
      [*(a1 + 40) _saveRegisteredTaskIdentifiers];
    }
  }

  else
  {
    if ([qword_1002C4FE8 count])
    {
      [*(a1 + 40) _saveRegisteredTaskIdentifiers];
    }

    v5 = 0;
  }
}

void sub_10002C0A4(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "daemon.cloudkitrescheduler.coordinator");
  v3 = qword_1002C4FE0;
  qword_1002C4FE0 = v2;
}

void sub_10002C478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C4B8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v3 = [v2 shouldRunForceProcessingStagedScopesTaskNow];
    v4 = *(a1 + 32);
    v5 = v4[2];
    if (v3)
    {

      [v4 _launchForcedExitForSupervisor:v5];
    }

    else if ([v4[2] shouldScheduleForceProcessingStagedScopesTask])
    {
      v6 = [*(*(a1 + 32) + 16) nextForcedExitDate];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }
}

void *sub_10002C55C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[7])
  {
    return [result _scheduleOrLaunchIfNecessaryInQueue];
  }

  return result;
}

void sub_10002C720(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 80) sharingScopeIdentifier];
  if (v4)
  {
    v5 = [*(*(a1 + 32) + 80) scopes];
    v6 = [v5 scopeWithIdentifier:v4];
    if (v6)
    {
      v7 = [v5 supervisorInfoForScope:v6];
      if (v7)
      {
        v8 = *(a1 + 32);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v13 = sub_100192D80;
        v14 = &unk_1002721A0;
        v9 = v4;
        v10 = *(a1 + 32);
        v15 = v9;
        v16 = v10;
        v17 = v7;
        v11 = v12;
        os_unfair_lock_lock(v8 + 2);
        v13(v11);
        os_unfair_lock_unlock(v8 + 2);
      }
    }

    [*(a1 + 32) _checkExitSupervisorInTransaction:v3];
  }
}

void sub_10002C87C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

id sub_10002C8A4()
{
  if (qword_1002C4FF8 != -1)
  {
    sub_100193184();
  }

  v1 = qword_1002C5000;

  return v1;
}

void sub_10002CB0C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_10002CB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002CB40(uint64_t a1)
{
  v2 = (a1 + 32);
  result = [*(*(a1 + 32) + 16) shouldRunForceProcessingStagedScopesTaskNowMovingToForeground];
  if (result)
  {
    return sub_100193198(v2, a1);
  }

  return result;
}

void sub_10002CE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10002CEE4(void *a1)
{
  v2 = (a1 + 4);
  v3 = *(a1[4] + 16);
  if (v3)
  {
    if (!a1[5] || ([v3 scopeIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", a1[5]), v4, (v5 & 1) == 0))
    {
      sub_100193288(v2);
    }
  }

  v6 = a1[9];
  v7 = a1[4];
  v8 = *(v7 + 16);
  if (v8)
  {
    if (v6)
    {
      if (v6 != [v8 exitState])
      {
        [*(*v2 + 16) setExitState:a1[9]];
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = sub_10002C8A4();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = a1[5];
          v11 = 138543362;
          v12 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ does not need to be supervised any more, stop supervising its exit", &v11, 0xCu);
        }

        v7 = *v2;
        v8 = *(*v2 + 16);
      }

      *(v7 + 16) = 0;

      *(*(a1[7] + 8) + 24) = 1;
    }
  }

  else if (v6)
  {
    sub_10019335C(a1, a1 + 9, v2);
  }
}

void sub_10002D340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10002D38C(void *a1)
{
  v2 = [*(a1[4] + 16) scopeIdentifier];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 16) supervisorInfo];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10002D640(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_10002D654(_Unwind_Exception *a1)
{
  objc_end_catch();
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10002D67C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) scopeIdentifier];
  v3 = [*(a1 + 40) scopeIdentifier];
  v4 = [v2 isEqualToString:v3];

  if (((v4 ^ (*(a1 + 56) == 0)) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10002D704(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _checkExitSupervisorInTransaction:v4];
  [*(a1 + 32) _storeSupervisorInfoInTransaction:v4];
}

void sub_10002D928(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 16);
  if (v3 && [v3 exitState] - 1 <= 2)
  {
    [*(*v2 + 2) noteServerHasChanges];
    if ([*(*v2 + 2) shouldRunForceProcessingStagedScopesTaskNow])
    {
      sub_1001935C0(_CPLSilentLogging, v2);
    }

    else
    {
      sub_10019349C(_CPLSilentLogging, v2, a1);
    }
  }
}

void sub_10002D9AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _checkExitSupervisorInTransaction:v4];
  [*(a1 + 32) _storeSupervisorInfoInTransaction:v4];
}

void sub_10002DB5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 24) & 1) == 0 && !*(v1 + 32))
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      [v3 cancel];
      v4 = *(a1 + 32);
      v5 = *(v4 + 48);
      *(v4 + 48) = 0;
    }

    v6 = *(a1 + 56);
    if ((v6 - 1) > 2)
    {
      if (_CPLSilentLogging)
      {
        return;
      }

      v9 = sub_10002C8A4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [CPLExitSharedLibrarySupervisor descriptionForExitState:*(a1 + 56)];
        v18 = [*(a1 + 40) scopeIdentifier];
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v18;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ is not a status we want to report to server for %{public}@", buf, 0x16u);
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
      v8 = [WeakRetained transport];
      v9 = [v8 platformObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v34 = sub_1000043A0;
        v35 = sub_1000052B4;
        v36 = 0;
        v10 = [CPLCloudKitSendSharedLibraryExitStatusFeedbackTask alloc];
        v11 = [*(a1 + 40) scopeIdentifier];
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v25 = _NSConcreteStackBlock;
        v26 = 3221225472;
        v27 = sub_10002DF34;
        v28 = &unk_100273678;
        v29 = *(a1 + 32);
        v31 = buf;
        v32 = *(a1 + 56);
        v30 = v12;
        v14 = [(CPLCloudKitSendSharedLibraryExitStatusFeedbackTask *)v10 initWithController:v9 scopeIdentifier:v11 cloudKitScope:v13 status:v6 completionHandler:&v25];
        v15 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v14;

        v16 = [v9 createGroupForSendExitStatus:v25];
        [*(*&buf[8] + 40) setTransportGroup:v16];

        [*(*&buf[8] + 40) runWithNoSyncSession];
        objc_storeStrong((*(a1 + 32) + 48), *(*&buf[8] + 40));

        _Block_object_dispose(buf, 8);
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = sub_10002C8A4();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_opt_class();
          v21 = *(a1 + 56);
          v22 = v20;
          v23 = [CPLExitSharedLibrarySupervisor descriptionForExitState:v21];
          v24 = [*(a1 + 40) scopeIdentifier];
          *buf = 138412802;
          *&buf[4] = v20;
          *&buf[12] = 2112;
          *&buf[14] = v23;
          *&buf[22] = 2114;
          v34 = v24;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Transport (%@) does not allow reporting of %@ for %{public}@", buf, 0x20u);
        }
      }
    }
  }
}

void sub_10002DF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002DF34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 88);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002E078;
  v13[3] = &unk_100273650;
  v13[4] = v5;
  v14 = v4;
  v16 = *(a1 + 56);
  v12 = *(a1 + 40);
  v7 = v12;
  v15 = v12;
  v8 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000290C;
  block[3] = &unk_100271E98;
  v18 = v8;
  v9 = v6;
  v10 = v4;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

void sub_10002E078(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40) == *(*(a1 + 32) + 48))
  {
    sub_100193698(a1, a1 + 32);
  }
}

void sub_10002E1D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0 && !*(v2 + 32) && !*(v2 + 40))
  {
    [v2 _unscheduleInQueue];
    v3 = [CPLEngineForceProcessingStagedScopesTask alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
    v5 = objc_loadWeakRetained((*(a1 + 32) + 72));
    v6 = [v5 syncManager];
    v7 = [v3 initWithEngineLibrary:WeakRetained delegate:v6];

    v8 = +[NSUUID UUID];
    v9 = [v8 UUIDString];
    [v7 setTaskIdentifier:v9];

    [v7 setBypassForceSyncLimitations:1];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10002E3FC;
    v19 = &unk_1002736C8;
    v10 = *(a1 + 40);
    v20 = *(a1 + 32);
    v21 = v10;
    [v7 setTaskDidFinishWithErrorBlock:&v16];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10002C8A4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 40) scopeIdentifier];
        *buf = 138412546;
        v23 = v7;
        v24 = 2114;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Launching forced exit task %@ for %{public}@", buf, 0x16u);
      }
    }

    [v7 launchTask];
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    *(v13 + 40) = v7;
    v15 = v7;
  }
}

void sub_10002E3FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 88);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100192E54;
  v12[3] = &unk_1002721A0;
  v12[4] = v6;
  v13 = v4;
  v14 = v5;
  v8 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000290C;
  block[3] = &unk_100271E98;
  v16 = v8;
  v9 = v7;
  v10 = v4;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

void sub_10002E530(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _checkExitSupervisorInTransaction:v3];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10002E76C;
  v16 = &unk_1002736A0;
  v19 = &v25;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v17 = v5;
  v18 = v6;
  v20 = &v21;
  v7 = &v13;
  os_unfair_lock_lock(v4 + 2);
  v15(v7);
  os_unfair_lock_unlock(v4 + 2);

  if (*(v26 + 24) == 1)
  {
    [*(a1 + 32) _storeSupervisorInfoInTransaction:{v3, v13, v14}];
    if (v22[3])
    {
      v8 = [*(*(a1 + 32) + 80) scopes];
      v9 = [*(a1 + 40) scopeIdentifier];
      v10 = [v8 scopeWithIdentifier:v9];

      if (v10 && ([v8 transportScopeForScope:v10], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v12 = [CPLCloudKitScope scopeFromTransportScope:v11];

        if (v12)
        {
          [*(a1 + 32) _sendExitFeedbackForSupervisor:*(a1 + 40) cloudKitScope:v12 exitState:v22[3]];
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void sub_10002E714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_10002E76C(id result)
{
  *(*(*(result + 6) + 8) + 24) = *(result + 4) == *(*(result + 5) + 16);
  if (*(*(*(result + 6) + 8) + 24) == 1)
  {
    v1 = result;
    result = [*(result + 4) exitState];
    *(*(v1[7] + 8) + 24) = result;
  }

  return result;
}

void *sub_10002E8CC(void *result)
{
  ++*(result[4] + 32);
  v2 = result[4];
  if (*(v2 + 32) == 1)
  {
    v3 = result;
    [*(v2 + 40) cancelTask];
    v4 = v3[4];

    return [v4 _unscheduleInQueue];
  }

  return result;
}

void *sub_10002EA1C(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 32);
  if (v2)
  {
    *(v1 + 32) = v2 - 1;
    result = result[4];
    if (!result[4])
    {
      return [result _scheduleOrLaunchIfNecessary];
    }
  }

  return result;
}

void sub_10002EAEC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_10002EC34(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_10002EC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002EC68(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) status];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10002F6BC(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.supervisor");
  v3 = qword_1002C5000;
  qword_1002C5000 = v2;
}

void sub_10002FB5C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002FC3C;
  v11[3] = &unk_100273738;
  v11[4] = v8;
  v12 = v7;
  v13 = *(a1 + 40);
  v14 = v6;
  v15 = *(a1 + 48);
  v9 = v6;
  v10 = v7;
  [v8 dispatchAsync:v11];
}

void sub_10002FC3C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (v3)
  {
    v4 = [CPLCloudKitErrors realErrorForError:v3];
    v5 = [*v2 lastOperationRequestUUIDs];
    v6 = [CPLCloudKitErrors CPLErrorForCloudKitError:v4 withRequestUUIDs:v5 description:@"Error creating primary zone"];

    if ([v6 isCPLErrorWithCode:1002])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = sub_100003568();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = [*(a1 + 48) cpl_zoneName];
          *buf = 138543618;
          v12 = v8;
          v13 = 2112;
          v14 = v3;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create primary zone %{public}@ because 'feature is disabled': %@", buf, 0x16u);
        }
      }

      v9 = [CPLErrors cplErrorWithCode:150 underlyingError:v3 description:@"Failed to create primary zone %@ because 'feature is disabled'", *(a1 + 48)];

      v6 = v9;
    }

    v10 = *(*v2 + 35);
    (*(*(*v2 + 34) + 16))();
  }

  else
  {
    sub_1001939A4(a1, v2);
  }
}

void sub_10003055C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000305A8(id a1, CKRecordZoneID *a2)
{
  v2 = [(CKRecordZoneID *)a2 zoneName];
  v3 = [v2 hasPrefix:CPLPrimaryScopeIdentifier];

  return v3;
}

void sub_100030630(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100030784;
  v17[3] = &unk_1002738C0;
  v17[4] = v7;
  v18 = v6;
  v22 = *(a1 + 72);
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v19 = v5;
  v23 = v9;
  v10 = *(a1 + 40);
  v24 = *(a1 + 88);
  v11 = *(a1 + 64);
  v12 = *(a1 + 48);
  *&v13 = v10;
  *(&v13 + 1) = v12;
  *&v14 = v8;
  *(&v14 + 1) = v11;
  v21 = v14;
  v20 = v13;
  v15 = v5;
  v16 = v6;
  [v7 dispatchAsync:v17];
}

void sub_100030784(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if (!v3)
  {
    v8 = 0;
    goto LABEL_10;
  }

  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v4 = [CPLCloudKitErrors realErrorForError:v3];
    v5 = [*v2 lastOperationRequestUUIDs];
    v6 = [*v2 scope];
    v7 = [v6 scopeIdentifier];
    v8 = [CPLCloudKitErrors CPLErrorForCloudKitError:v4 withRequestUUIDs:v5 description:@"Error fetching zone for %@", v7];

LABEL_9:
    goto LABEL_10;
  }

  if (![CPLCloudKitErrors isPartialFailureError:v3])
  {
    v4 = [*v2 lastOperationRequestUUIDs];
    v5 = [*v2 scope];
    v6 = [v5 scopeIdentifier];
    v8 = [CPLCloudKitErrors CPLErrorForCloudKitError:v3 withRequestUUIDs:v4 description:@"Error fetching zone for %@", v6];
    goto LABEL_9;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v74 = sub_1000043B0;
  v75 = sub_1000052BC;
  v76 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_1000043B0;
  v65 = sub_1000052BC;
  v66 = 0;
  v9 = objc_alloc_init(NSMutableArray);
  v55 = [CPLCloudKitErrors errorsPerZoneIDForPartialFailureError:v3];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100031220;
  v56[3] = &unk_100273898;
  v58 = *(a1 + 72);
  v10 = v9;
  v57 = v10;
  v59 = buf;
  v60 = &v61;
  [v55 enumerateKeysAndObjectsUsingBlock:v56];
  v11 = *(*&buf[8] + 40);
  if (v11)
  {
    v12 = [*v2 lastOperationRequestUUIDs];
    v13 = [*v2 scope];
    v14 = [v13 scopeIdentifier];
    v15 = [v62[5] zoneName];
    v8 = [CPLCloudKitErrors CPLErrorForCloudKitError:v11 withRequestUUIDs:v12 description:@"Error fetching zone for %@ (zone %@)", v14, v15];
  }

  else
  {
    if (![v10 count] || (_CPLSilentLogging & 1) != 0)
    {
      v8 = 0;
      goto LABEL_78;
    }

    v12 = sub_100003568();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [v10 componentsJoinedByString:{@", "}];
      v52 = [*(a1 + 48) count];
      v53 = [*v2 scope];
      v54 = [v53 scopeIdentifier];
      *v67 = 138412802;
      v68 = v51;
      v69 = 2048;
      v70 = v52;
      v71 = 2112;
      v72 = v54;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring errors for %@ - found %lu actual zones for %@", v67, 0x20u);
    }

    v8 = 0;
  }

LABEL_78:
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(buf, 8);
LABEL_10:
  v16 = a1 + 88;
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    v17 = [*(a1 + 48) objectForKey:?];
    v18 = *(*(a1 + 96) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    if (*(*(*(a1 + 96) + 8) + 40))
    {
      if (v8)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v20 = sub_100003568();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [*(*(*v16 + 8) + 40) zoneName];
            *buf = 138543618;
            *&buf[4] = v21;
            *&buf[12] = 2112;
            *&buf[14] = v3;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using stored zone %{public}@ - ignoring fetch error: %@", buf, 0x16u);
          }
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        sub_100193E80(a1 + 88);
      }

LABEL_36:
      if (*(*(*v16 + 8) + 40))
      {
        if (!*(*(*(a1 + 96) + 8) + 40))
        {
          sub_100193F34(a1, v2);
        }

        [*v2 _callCompletionWithZone:?];
        goto LABEL_71;
      }

      v31 = *(a1 + 80);
      v32 = [*(a1 + 48) allKeys];
      v33 = (*(v31 + 16))(v31, v32);

      if (v33)
      {
        v34 = [*(a1 + 48) objectForKeyedSubscript:v33];
        v35 = *(*(a1 + 96) + 8);
        v36 = *(v35 + 40);
        *(v35 + 40) = v34;
      }

      v37 = *(*(*(a1 + 96) + 8) + 40);
      if (v37)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v38 = sub_100003568();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [*(*(*(a1 + 96) + 8) + 40) zoneID];
            v40 = [v39 cpl_zoneName];
            v41 = [*(a1 + 48) count];
            *buf = 138543618;
            *&buf[4] = v40;
            *&buf[12] = 2048;
            *&buf[14] = v41;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Dynamically found zone %{public}@ among %ld zones", buf, 0x16u);
          }

          v37 = *(*(*(a1 + 96) + 8) + 40);
        }

        v42 = [v37 zoneID];
        v43 = *(*v16 + 8);
        v44 = *(v43 + 40);
        *(v43 + 40) = v42;
      }

      else
      {
        objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(a1 + 64));
        if (_CPLSilentLogging)
        {
LABEL_61:
          v50 = *(a1 + 32);
          if (*(*(*(a1 + 96) + 8) + 40))
          {
            [v50 _callCompletionWithZone:?];
          }

          else if (*(v50 + 304) || *(v50 + 296) != 1)
          {
            sub_100194000(a1 + 88, v2);
          }

          else
          {
            if (!*(*(*v16 + 8) + 40))
            {
              sub_10019412C(a1, v2);
            }

            [v50 createRecordZoneWithID:?];
          }

          goto LABEL_71;
        }

        v44 = sub_100003568();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [*(a1 + 48) count];
          v49 = [*(*(*(a1 + 88) + 8) + 40) cpl_zoneName];
          *buf = 134218242;
          *&buf[4] = v48;
          *&buf[12] = 2114;
          *&buf[14] = v49;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Found no valid zone among %ld zones. Using %{public}@", buf, 0x16u);
        }
      }

      goto LABEL_61;
    }

    if (v8)
    {
      if ([v8 isCPLErrorWithCode:1002])
      {
        sub_100193D5C(v2, a1 + 88, a1 + 96);
      }

      goto LABEL_29;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = sub_100003568();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(*(*(a1 + 88) + 8) + 40);
        v25 = *(a1 + 48);
        v24 = *(a1 + 56);
        *buf = 138412802;
        *&buf[4] = v23;
        *&buf[12] = 2112;
        *&buf[14] = v24;
        *&buf[22] = 2112;
        v74 = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to fetch %@ yet CloudKit returned no error, operation %@ returned %@", buf, 0x20u);
      }
    }

    v26 = [*(*(*v16 + 8) + 40) zoneName];
    v8 = [CPLErrors cplErrorWithCode:150 description:@"Failed to fetch zone %@ for unknown reasons", v26];
  }

  if (!v8)
  {
    goto LABEL_36;
  }

LABEL_29:
  if (*(*(*v16 + 8) + 40))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v27 = sub_100003568();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [*(*(*v16 + 8) + 40) cpl_zoneName];
        v29 = v28;
        if (v3)
        {
          v30 = v3;
        }

        else
        {
          v30 = v8;
        }

        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to fetch zone %{public}@: %@", buf, 0x16u);
      }

LABEL_53:
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v27 = sub_100003568();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      if (v3)
      {
        v45 = v3;
      }

      else
      {
        v45 = v8;
      }

      *buf = 138412290;
      *&buf[4] = v45;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to fetch all zones: %@", buf, 0xCu);
    }

    goto LABEL_53;
  }

  v46 = [*(*v2 + 38) transportScope];
  if (!v46)
  {
    if (*(*(*(a1 + 96) + 8) + 40))
    {
      v47 = [[CPLCloudKitScope alloc] initWithZone:*(*(*(a1 + 96) + 8) + 40) options:*(*(a1 + 32) + 288)];
      v46 = [(CPLCloudKitScope *)v47 transportScope];
    }

    else
    {
      v46 = 0;
    }
  }

  (*(*(*v2 + 34) + 16))();

LABEL_71:
}

void sub_1000311EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100031220(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    v9 = [v10 zoneName];
    [*(a1 + 32) addObject:v9];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000313B4(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.fetchzone");
  v3 = qword_1002C5010;
  qword_1002C5010 = v2;
}

void sub_100031640(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100194240;
  v8[3] = &unk_100273930;
  v8[4] = v6;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  [v6 dispatchAsync:v8];
}

void sub_100031778(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.exitstatusfeedback");
  v3 = qword_1002C5020;
  qword_1002C5020 = v2;
}

void sub_100032560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_100032578(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

id sub_100033C54(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 recordName];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

BOOL sub_100033CC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  if ([*(*(a1 + 32) + 88) containsObject:*(a1 + 40)])
  {
    v7 = 1;
  }

  else
  {
    v8 = -[CPLCKSplitCopyHelper initWithBaseCKRecord:sourceRecordID:fromPrivateRecord:recordClass:sourceDatabaseScope:destinationRecordID:planner:]([CPLCKSplitCopyHelper alloc], "initWithBaseCKRecord:sourceRecordID:fromPrivateRecord:recordClass:sourceDatabaseScope:destinationRecordID:planner:", 0, *(a1 + 48), 0, objc_opt_class(), [*(*(a1 + 32) + 288) databaseScope], *(a1 + 56), *(a1 + 32));
    v9 = [[NSString alloc] initWithFormat:@"Copy (%@)", *(a1 + 64)];
    v10 = [(CPLCKSplitCopyHelper *)v8 copiedRecordFromSourceRecord:v6 action:v9 error:a4];
    v7 = v10 != 0;
    if (v10)
    {
      [*(*(a1 + 32) + 24) insertObject:v10 atIndex:*(a1 + 72)];
      [*(*(a1 + 32) + 32) removeObject:*(a1 + 56)];
      [*(a1 + 32) _noteMasterWillBeUploadedToPrivateZone:*(a1 + 40)];
      [*(a1 + 32) _noteRecordWithScopedIdentifierWillMoveToSplitState:*(a1 + 40)];
    }
  }

  return v7;
}

BOOL sub_100034058(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v34 = a2;
  v7 = a3;
  v8 = a1 + 32;
  v9 = [*(*(a1 + 32) + 104) containsObject:*(a1 + 40)];
  if (v9)
  {
    v32 = a4;
    v33 = v7;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = *(*v8 + 48);
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v11;
    v13 = *v36;
LABEL_4:
    v14 = 0;
    while (1)
    {
      if (*v36 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v35 + 1) + 8 * v14);
      v16 = [v15 recordID];
      v17 = [v16 isEqual:*(a1 + 56)];

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (!v12)
        {
LABEL_10:

          goto LABEL_11;
        }

        goto LABEL_4;
      }
    }

    v21 = v15;

    if (!v21)
    {
LABEL_11:
      sub_1001970D4(a1, a1 + 32);
    }

    v22 = -[CPLCKSplitCopyHelper initWithBaseCKRecord:sourceRecordID:fromPrivateRecord:recordClass:sourceDatabaseScope:destinationRecordID:planner:]([CPLCKSplitCopyHelper alloc], "initWithBaseCKRecord:sourceRecordID:fromPrivateRecord:recordClass:sourceDatabaseScope:destinationRecordID:planner:", v21, *(a1 + 64), 1, objc_opt_class(), [*(*(a1 + 32) + 280) databaseScope], *(a1 + 56), *(a1 + 32));

    a4 = v32;
    v7 = v33;
  }

  else
  {
    if ([*(a1 + 48) targetState] == 3)
    {
      v18 = objc_opt_class();
      v19 = CPLCKRecord(v18, *(a1 + 56), 1);
      v20 = +[NSDate date];
      [v19 setObject:v20 forKeyedSubscript:@"recordModificationDate"];
    }

    else
    {
      v19 = 0;
    }

    v22 = -[CPLCKSplitCopyHelper initWithBaseCKRecord:sourceRecordID:fromPrivateRecord:recordClass:sourceDatabaseScope:destinationRecordID:planner:]([CPLCKSplitCopyHelper alloc], "initWithBaseCKRecord:sourceRecordID:fromPrivateRecord:recordClass:sourceDatabaseScope:destinationRecordID:planner:", v19, *(a1 + 64), 1, objc_opt_class(), [*(*(a1 + 32) + 280) databaseScope], *(a1 + 56), *(a1 + 32));
  }

  v23 = [[NSString alloc] initWithFormat:@"Copy (%@)", *(a1 + 72)];
  v24 = [(CPLCKSplitCopyHelper *)v22 copiedRecordFromSourceRecord:v7 action:v23 error:a4];
  v25 = v24 != 0;
  if (v24)
  {
    v26 = v9;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v27 = v34;
  }

  else
  {
    v28 = *(*v8 + 48);
    v27 = v34;
    if (!v28)
    {
      v29 = objc_alloc_init(NSMutableArray);
      v30 = *(*v8 + 48);
      *(*v8 + 48) = v29;

      v28 = *(*v8 + 48);
    }

    [v28 insertObject:v24 atIndex:*(a1 + 88)];
    [*(*(a1 + 32) + 56) removeObject:*(a1 + 56)];
    [*(a1 + 32) _noteMasterWillBeUploadedToSharedZone:*(a1 + 40)];
    [*(a1 + 32) _noteRecordWithScopedIdentifierWillMoveToSplitState:*(a1 + 40)];
    v25 = 1;
  }

  return v25;
}

void sub_10003742C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transport.cloudkit.uploadbatch.planner");
  v3 = qword_1002C5030;
  qword_1002C5030 = v2;
}