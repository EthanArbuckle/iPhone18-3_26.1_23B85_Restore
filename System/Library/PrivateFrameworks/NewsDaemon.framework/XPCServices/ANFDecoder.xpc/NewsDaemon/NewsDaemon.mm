int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id NDANFDecodingServiceXPCInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NDANFDecodingServiceType];
  v1 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v0 setClasses:v1 forSelector:"decodeANFDocumentData:completion:" argumentIndex:0 ofReply:0];

  v2 = objc_opt_class();
  v3 = [NSSet setWithObjects:v2, objc_opt_class(), 0];
  [v0 setClasses:v3 forSelector:"decodeANFDocumentData:completion:" argumentIndex:0 ofReply:1];

  return v0;
}

Class sub_100001440(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000087E8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100001584;
    v4[4] = &unk_1000041D8;
    v4[5] = v4;
    v5 = off_1000041C0;
    v6 = 0;
    qword_1000087E8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000087E8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SXContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000170C();
  }

  qword_1000087E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001584(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000087E8 = result;
  return result;
}