@interface EMTop
- (Class)mapperClassForIndexing:(BOOL)a3;
- (void)initializeClasses;
- (void)readFile:(id)a3 orData:(id)a4 dataFileName:(id)a5 format:(unint64_t)a6 archiver:(id)a7 forIndexing:(BOOL)a8;
- (void)readerDidStartDocument:(id)a3 withElementCount:(int64_t)a4;
@end

@implementation EMTop

- (Class)mapperClassForIndexing:(BOOL)a3
{
  v3 = objc_opt_class();

  return v3;
}

- (void)initializeClasses
{
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  v3.receiver = self;
  v3.super_class = EMTop;
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
  v18.super_class = EMTop;
  [(QLTop *)&v18 readFile:v14 orData:v15 dataFileName:v16 format:a6 archiver:v17 forIndexing:v8];
}

- (void)readerDidStartDocument:(id)a3 withElementCount:(int64_t)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = EMTop;
  [(QLTop *)&v8 readerDidStartDocument:v6 withElementCount:a4];
  v7 = [(QLTop *)self mapper];
  [v7 setElementCount:a4];
}

@end