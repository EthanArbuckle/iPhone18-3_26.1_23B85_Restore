@interface FCMapTable
+ (FCMapTable)mapTableWithKeyOptions:(unint64_t)options valueOptions:(unint64_t)valueOptions;
+ (id)strongToStrongObjectsMapTable;
+ (id)strongToWeakObjectsMapTable;
+ (id)weakToStrongObjectsMapTable;
+ (id)weakToWeakObjectsMapTable;
- (FCMapTable)init;
- (FCMapTable)initWithCoder:(id)coder;
- (FCMapTable)initWithKeyOptions:(unint64_t)options valueOptions:(unint64_t)valueOptions capacity:(unint64_t)capacity;
- (FCMapTable)initWithKeyPointerFunctions:(id)functions valuePointerFunctions:(id)pointerFunctions capacity:(unint64_t)capacity;
- (FCMapTable)initWithMapTable:(id)table;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation FCMapTable

+ (id)strongToWeakObjectsMapTable
{
  v2 = [self alloc];
  strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v4 = [v2 initWithMapTable:strongToWeakObjectsMapTable];

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

- (FCMapTable)initWithMapTable:(id)table
{
  tableCopy = table;
  v9.receiver = self;
  v9.super_class = FCMapTable;
  v6 = [(FCMapTable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapTable, table);
  }

  return v7;
}

- (FCMapTable)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD18]);
  v4 = [(FCMapTable *)self initWithMapTable:v3];

  return v4;
}

- (FCMapTable)initWithKeyOptions:(unint64_t)options valueOptions:(unint64_t)valueOptions capacity:(unint64_t)capacity
{
  v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:options valueOptions:valueOptions capacity:capacity];
  v7 = [(FCMapTable *)self initWithMapTable:v6];

  return v7;
}

- (FCMapTable)initWithKeyPointerFunctions:(id)functions valuePointerFunctions:(id)pointerFunctions capacity:(unint64_t)capacity
{
  v8 = MEMORY[0x1E696AD18];
  pointerFunctionsCopy = pointerFunctions;
  functionsCopy = functions;
  v11 = [[v8 alloc] initWithKeyPointerFunctions:functionsCopy valuePointerFunctions:pointerFunctionsCopy capacity:capacity];

  v12 = [(FCMapTable *)self initWithMapTable:v11];
  return v12;
}

+ (FCMapTable)mapTableWithKeyOptions:(unint64_t)options valueOptions:(unint64_t)valueOptions
{
  v6 = [self alloc];
  v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:options valueOptions:valueOptions];
  v8 = [v6 initWithMapTable:v7];

  return v8;
}

+ (id)strongToStrongObjectsMapTable
{
  v2 = [self alloc];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v4 = [v2 initWithMapTable:strongToStrongObjectsMapTable];

  return v4;
}

+ (id)weakToStrongObjectsMapTable
{
  v2 = [self alloc];
  weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  v4 = [v2 initWithMapTable:weakToStrongObjectsMapTable];

  return v4;
}

+ (id)weakToWeakObjectsMapTable
{
  v2 = [self alloc];
  weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  v4 = [v2 initWithMapTable:weakToWeakObjectsMapTable];

  return v4;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
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

  [(NSMapTable *)self->_mapTable setObject:objectCopy forKey:keyCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSMapTable *)self->_mapTable copyWithZone:zone];
  v7 = [v5 initWithMapTable:v6];

  return v7;
}

- (FCMapTable)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc(objc_opt_class());
  v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithCoder:coderCopy];

  v7 = [v5 initWithMapTable:v6];
  return v7;
}

@end