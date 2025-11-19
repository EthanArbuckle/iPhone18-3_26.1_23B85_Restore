@interface FCMapTable
+ (FCMapTable)mapTableWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4;
+ (id)strongToStrongObjectsMapTable;
+ (id)strongToWeakObjectsMapTable;
+ (id)weakToStrongObjectsMapTable;
+ (id)weakToWeakObjectsMapTable;
- (FCMapTable)init;
- (FCMapTable)initWithCoder:(id)a3;
- (FCMapTable)initWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4 capacity:(unint64_t)a5;
- (FCMapTable)initWithKeyPointerFunctions:(id)a3 valuePointerFunctions:(id)a4 capacity:(unint64_t)a5;
- (FCMapTable)initWithMapTable:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation FCMapTable

+ (id)strongToWeakObjectsMapTable
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v4 = [v2 initWithMapTable:v3];

  return v4;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  keyClassName = self->_keyClassName;
  if (keyClassName)
  {
    v4 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
    {
      valueClassName = self->_valueClassName;
      *buf = 138543618;
      v9 = keyClassName;
      v10 = 2114;
      v11 = valueClassName;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "will deallocate map table with type <%{public}@, %{public}@>", buf, 0x16u);
    }
  }

  v7.receiver = self;
  v7.super_class = FCMapTable;
  [(FCMapTable *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (FCMapTable)initWithMapTable:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCMapTable;
  v6 = [(FCMapTable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapTable, a3);
  }

  return v7;
}

- (FCMapTable)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD18]);
  v4 = [(FCMapTable *)self initWithMapTable:v3];

  return v4;
}

- (FCMapTable)initWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4 capacity:(unint64_t)a5
{
  v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:a3 valueOptions:a4 capacity:a5];
  v7 = [(FCMapTable *)self initWithMapTable:v6];

  return v7;
}

- (FCMapTable)initWithKeyPointerFunctions:(id)a3 valuePointerFunctions:(id)a4 capacity:(unint64_t)a5
{
  v8 = MEMORY[0x1E696AD18];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithKeyPointerFunctions:v10 valuePointerFunctions:v9 capacity:a5];

  v12 = [(FCMapTable *)self initWithMapTable:v11];
  return v12;
}

+ (FCMapTable)mapTableWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4
{
  v6 = [a1 alloc];
  v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:a3 valueOptions:a4];
  v8 = [v6 initWithMapTable:v7];

  return v8;
}

+ (id)strongToStrongObjectsMapTable
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v4 = [v2 initWithMapTable:v3];

  return v4;
}

+ (id)weakToStrongObjectsMapTable
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v4 = [v2 initWithMapTable:v3];

  return v4;
}

+ (id)weakToWeakObjectsMapTable
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  v4 = [v2 initWithMapTable:v3];

  return v4;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (!self->_valueClassName)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    keyClassName = self->_keyClassName;
    self->_keyClassName = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    valueClassName = self->_valueClassName;
    self->_valueClassName = v11;
  }

  [(NSMapTable *)self->_mapTable setObject:v13 forKey:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSMapTable *)self->_mapTable copyWithZone:a3];
  v7 = [v5 initWithMapTable:v6];

  return v7;
}

- (FCMapTable)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithCoder:v4];

  v7 = [v5 initWithMapTable:v6];
  return v7;
}

@end