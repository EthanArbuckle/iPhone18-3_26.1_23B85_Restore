int main(int argc, const char **argv, const char **envp)
{
  sub_100000A8C();
  sub_100000A24();
  sub_100000A7C();
  return 0;
}

unint64_t sub_100000A24()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    sub_100000A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}