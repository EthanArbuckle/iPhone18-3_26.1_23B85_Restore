@interface PMTop
- (Class)mapperClassForIndexing:(BOOL)a3;
- (void)initializeClasses;
- (void)readFile:(id)a3 orData:(id)a4 dataFileName:(id)a5 format:(unint64_t)a6 archiver:(id)a7 forIndexing:(BOOL)a8;
@end

@implementation PMTop

- (void)initializeClasses
{
  objc_opt_class();
  objc_opt_class();
  v3.receiver = self;
  v3.super_class = PMTop;
  [(QLTop *)&v3 initializeClasses];
}

- (void)readFile:(id)a3 orData:(id)a4 dataFileName:(id)a5 format:(unint64_t)a6 archiver:(id)a7 forIndexing:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  [v17 setAutoCommit:0];
  v18.receiver = self;
  v18.super_class = PMTop;
  [(QLTop *)&v18 readFile:v14 orData:v15 dataFileName:v16 format:a6 archiver:v17 forIndexing:v8];
}

- (Class)mapperClassForIndexing:(BOOL)a3
{
  v3 = objc_opt_class();

  return v3;
}

@end